process definition creation
populateBpmDefinition: aBpmProcessDefinition withXPDL: aXPDLWorflowProcess for: anOrbeonApplication
	"The receiver creates BPM process definition <BpmProcessDefinition> based on the XPDL pool <aXPDLPool>"
	| roles |

	aBpmProcessDefinition application: anOrbeonApplication.
	aBpmProcessDefinition addAllParticipants: participants.
	roles := Dictionary new.

	aXPDLWorflowProcess extendedAttributesDo: [:attr | aBpmProcessDefinition setExtendedAttributesWith: attr].

	aXPDLWorflowProcess parentLanesKeysDo: [:laneName | | newOrExistingRole |
		newOrExistingRole := systemRoot createNewOrGetExistingFrontOfficeRole: laneName in: anOrbeonApplication applicationName.
		aBpmProcessDefinition addRole: newOrExistingRole.
		roles at: laneName put: newOrExistingRole.
	].

	"it create the corresponding Bpm definition for each Xpdl artifact <xpdlActivity> in the pool <aXPDLPool>"
	aXPDLWorflowProcess activitiesDo: [:xpdlActivity | | newArtifact lanesNames |
		newArtifact := xpdlActivity createBpmDefinitionOn: aBpmProcessDefinition.
		xpdlActivity performersDo: [:eachParticipantNode | | bpmPerformer performerRole | "here the Performers of the task are set"
			bpmPerformer :=  participants detect: [:each | each name = eachParticipantNode getName].
			performerRole := systemRoot createNewOrGetExistingFrontOfficeRole: bpmPerformer name in: anOrbeonApplication applicationName."create the role for the performer"
			newArtifact addPerformer: bpmPerformer;
				grantRole: performerRole]. "grant the role of the performer to the task definition"
		newArtifact addToParentProcess.
		xpdlActivity extendedAttributesDo: [:attr | newArtifact setExtendedAttributesWith: attr].
		xpdlActivity performersIfEmpty: ["if has perfomers --> lanes roles are NOT granted to the task (only performers roles are granted)"
			lanesNames := (xpdlActivity getLanesFrom: aXPDLWorflowProcess) collect: [:each | each getName].
			lanesNames do: [:laneName | (roles at: laneName ifAbsent: [nil]) ifNotNil: [:rol | newArtifact grantRole: rol]]
		]
	].
	aXPDLWorflowProcess transitionsCollect: [:xpdlTransition | | newTransition |
		newTransition := (xpdlTransition createBpmDefinitionOn: aBpmProcessDefinition) addToParentProcess.
		xpdlTransition extendedAttributesDo: [:attr | newTransition extendedAttributes: attr].
		newTransition setStartArtifact: (xpdlTransition getStartEventFrom: aBpmProcessDefinition).
		newTransition setEndArtifact: (xpdlTransition getEndEventFrom: aBpmProcessDefinition).
	].

	"the receiver attach events to task. At this point both exist but are unrelated "
	self attachEventsToTaskIn: aBpmProcessDefinition withXPDL: aXPDLWorflowProcess.

	aBpmProcessDefinition checkAndRegisterAsAnonymousStart. "if it is the case register <aBpmProcessDefinition> with anonynous start"

	^aBpmProcessDefinition