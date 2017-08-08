monitoring
updateLastExecutionTimeFor: aBpmProcessInstance
	| procNameDictionary procIdDictionary procInstancesCollection |

	procNameDictionary := processesCreationEventHistory at: aBpmProcessInstance applicationName
								ifAbsent: [processesCreationEventHistory at: aBpmProcessInstance applicationName put: Dictionary new] 
								ifPresent: [:dict | dict].

	procIdDictionary := procNameDictionary at: aBpmProcessInstance processName 
									ifAbsent: [procNameDictionary at: aBpmProcessInstance processName put: Dictionary new] 
									ifPresent: [:dictionary | dictionary].

	procInstancesCollection := procNameDictionary at: aBpmProcessInstance id 
											ifAbsent: [procNameDictionary at: aBpmProcessInstance id put: Set new] 
											ifPresent: [:instancesCollection | instancesCollection].

	^procInstancesCollection add: aBpmProcessInstance