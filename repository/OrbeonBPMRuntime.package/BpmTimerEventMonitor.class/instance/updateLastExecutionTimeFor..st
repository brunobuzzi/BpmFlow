monitoring
updateLastExecutionTimeFor: aBpmProcessInstance
	"The receiver update the last execution time for process instance <aBpmProcessInstance>.
	It means the process execution time span (currentTime - lastExecution >=  process execution time span) have been exceeded and new process must be created"
	| procNameDictionary procInstancesCollection |

	procNameDictionary := processesCreationEventHistory at: aBpmProcessInstance applicationName
								ifAbsent: [processesCreationEventHistory at: aBpmProcessInstance applicationName put: Dictionary new] 
								ifPresent: [:dict | dict].

	procInstancesCollection := procNameDictionary at: aBpmProcessInstance processName 
									ifAbsent: [procNameDictionary at: aBpmProcessInstance processName put: OrderedCollection new] 
									ifPresent: [:dictionary | dictionary].


	^procInstancesCollection add: aBpmProcessInstance