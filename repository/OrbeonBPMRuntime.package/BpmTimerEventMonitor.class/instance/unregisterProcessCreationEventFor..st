process creation
unregisterProcessCreationEventFor: aBpmProcessDefinition
	"The receiver remove the process <aBpmProcessDefinition> from the collection of Timer process creation.
	No more Timer process creation will be triggered for <aBpmProcessDefinition>"

	aBpmProcessDefinition hasCreationTimer 
	ifFalse: [ProcessDefinitionWithoutTimerException signal: 'The Process Definition [', aBpmProcessDefinition processName, '] does NOT have any creation Timer'].

	^monitoredProcessDefinitions remove: aBpmProcessDefinition ifAbsent: []