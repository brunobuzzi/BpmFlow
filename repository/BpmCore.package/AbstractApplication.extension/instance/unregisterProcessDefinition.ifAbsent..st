*bpmcore
unregisterProcessDefinition: aBpmProcessDefinition ifAbsent: aBlock
	"The receiver unregister the process definition <aBpmProcessDefinition> if absent evaluate the niladic block <aBlock>"
	| processCollection |

	processCollection := (processesDefinitions includesKey: aBpmProcessDefinition processName) 
								ifFalse: [processesDefinitions at: [^aBlock value]] 
								ifTrue: [processesDefinitions at: aBpmProcessDefinition processName].

	^processCollection remove: aBpmProcessDefinition ifAbsent: aBlock