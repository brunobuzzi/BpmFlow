monitor process creation
removeCreationHistoryFor: aBpmProcessDefinition
	"The receiver remove all process creation history for process definition <aBpmProcessDefinition>"
	| procNameDictionary |

	procNameDictionary := processesCreationEventHistory at: aBpmProcessDefinition applicationName
								ifAbsent: [processesCreationEventHistory at: aBpmProcessDefinition applicationName put: Dictionary new] 
								ifPresent: [:dict | dict].

	^procNameDictionary at: aBpmProcessDefinition processName put: OrderedCollection new