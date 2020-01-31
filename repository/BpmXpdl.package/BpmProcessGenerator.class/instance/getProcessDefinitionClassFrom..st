process definition creation
getProcessDefinitionClassFrom: aXPDLPool
	"Answer the correct process definition for xpdl element <aXPDLPool>"

	^((aXPDLPool hasParentProcess) or: [aXPDLPool isEmbedded])
		ifFalse: [BpmTopProcessDefinition]
		ifTrue: [BpmSubProcessDefinition]