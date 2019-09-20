render xpdl
getTooltipFor: aXPDLActivityNode
	"The receiver answer <aString> as tooltip for activity <aXPDLActivityNode>.
	If the activity is an Orbeon Form the tooltip is get directly from the <OrbeonFormInstance> with #printStructure.
	If the activity is a Seaside Form then the Seaside componente must implement #getTooltipOrNil"

	model isProcessInstance ifTrue: [^model getTooltipForTaskNamed: aXPDLActivityNode getName].

	^aXPDLActivityNode isOrbeonTaskNode
		ifTrue:[aXPDLActivityNode getTooltipOrNilFor: model application]
		ifFalse: [aXPDLActivityNode isSeasideTaskNode 
					ifTrue: [(aXPDLActivityNode getArtifactFrom: self modelAsProcessDefinition) getComponentClass getTooltipOrNil]
					ifFalse: [aXPDLActivityNode getTooltipOrNil].
		].