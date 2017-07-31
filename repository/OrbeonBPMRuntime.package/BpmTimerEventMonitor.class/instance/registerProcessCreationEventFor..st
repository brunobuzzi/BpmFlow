process creation timer
registerProcessCreationEventFor: aBpmProcessDefinition
	"The receiver add the process <aBpmProcessDefinition> to added in the collection of Timer process creation.
	An instance of <aBpmProcessDefinition> will be created each X time depending on the Timer configuration.
	<aBpmProcessDefinition> must respond <true> to #hasCreationTimer message"

	aBpmProcessDefinition hasCreationTimer 
	ifFalse: [ProcessDefinitionWithoutTimerException signal: 'The Process Definition [', aBpmProcessDefinition processName, '] does NOT have any creation Timer'].

	^monitoredProcessDefinitions add: aBpmProcessDefinition