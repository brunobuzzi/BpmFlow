monitoring
updateLastExecutionTimeFor: aBpmProcessInstance
	| procNameDictionary procInstancesCollection |

	procNameDictionary := processesCreationEventHistory at: aBpmProcessInstance applicationName
								ifAbsent: [processesCreationEventHistory at: aBpmProcessInstance applicationName put: Dictionary new] 
								ifPresent: [:dict | dict].

	procInstancesCollection := procNameDictionary at: aBpmProcessInstance processName 
									ifAbsent: [procNameDictionary at: aBpmProcessInstance processName put: OrderedCollection new] 
									ifPresent: [:dictionary | dictionary].


	^procInstancesCollection add: aBpmProcessInstance