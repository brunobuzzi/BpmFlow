*bpmcore
registerProcessDefinition: aBpmProcessDefinition
	"The receiver register the process definition <aBpmProcessDefinition>"
	| processCollection |

	processCollection := (processesDefinitions includesKey: aBpmProcessDefinition processName) 
								ifFalse: [processesDefinitions at: aBpmProcessDefinition processName put: OrderedCollection new] 
								ifTrue: [processesDefinitions at: aBpmProcessDefinition processName].

	^processCollection add: aBpmProcessDefinition