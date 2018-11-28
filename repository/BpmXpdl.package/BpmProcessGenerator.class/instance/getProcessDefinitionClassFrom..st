process definition creation
getProcessDefinitionClassFrom: aXPDLPool
	"Answer the correct process definition for xpdl element <aXPDLPool>"

	^aXPDLPool hasParentProcess
		ifFalse: [BpmTopProcessDefinition]
		ifTrue: [BpmSubProcessDefinition]