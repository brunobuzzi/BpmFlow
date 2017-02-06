process definition creation
populateBpmDefinition: aBpmProcessDefinition withXPDL: aXPDLWorflowProcess for: anOrbeonApplication
	"The receiver creates BPM process definition <BpmProcessDefinition> based on the XPDL pool <aXPDLPool>"
	| roles |

	aBpmProcessDefinition application: anOrbeonApplication.
	aBpmProcessDefinition addAllParticipants: participants.
	roles := Dictionary new.

	aXPDLWorflowProcess parentLanes keysDo: [:laneName | roles at: laneName put: (BpmFrontOfficeRole createNewOrGetExisting: laneName in: anOrbeonApplication applicationName)].

	"it create the corresponding Bpm definition for each Xpdl artifact <xpdlActivity> in the pool <aXPDLPool>"
	aXPDLWorflowProcess activities do: [:xpdlActivity | | newArtifact lanesNames |
		newArtifact := xpdlActivity createBpmDefinitionOn: aBpmProcessDefinition.
		xpdlActivity performers do: [:eachParticipantNode | | bpmPerformer performerRole | "here the Performers of the task are set"
			bpmPerformer :=  participants detect: [:each | each name = eachParticipantNode getName].
			performerRole := BpmFrontOfficeRole createNewOrGetExisting: bpmPerformer name in: anOrbeonApplication applicationName."create the role for the performer"
			newArtifact addPerformer: bpmPerformer;
				grantRole: performerRole]. "grant the role of the performer to the task definition"
		newArtifact addToParentProcess.
		newArtifact setExtendedAttributesWith: xpdlActivity extendedAttributes.
		xpdlActivity performers ifEmpty: ["if has perfomers --> lanes roles are NOT granted to the task (only performers roles are granted)"
			lanesNames := (xpdlActivity getLanesFrom: aXPDLWorflowProcess) collect: [:each | each getName].
			lanesNames do: [:laneName | (roles at: laneName ifAbsent: [nil]) ifNotNil: [:rol | newArtifact grantRole: rol]]
		]
	].
	aXPDLWorflowProcess transitions collect: [:xpdlTransition | | newTransition |
		newTransition := (xpdlTransition createBpmDefinitionOn: aBpmProcessDefinition) addToParentProcess.
		newTransition extendedAttributes: xpdlTransition extendedAttributes.
		newTransition setStartArtifact: (xpdlTransition startNode getArtifactFrom: aBpmProcessDefinition).
		newTransition setEndArtifact: (xpdlTransition endNode getArtifactFrom: aBpmProcessDefinition).
	].

	^aBpmProcessDefinition