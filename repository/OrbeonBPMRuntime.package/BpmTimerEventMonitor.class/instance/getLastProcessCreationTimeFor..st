monitoring
getLastProcessCreationTimeFor: aBpmProcessDefinition
	"The receiver answer <aTimeStamp> of the last process creation executed for <aBpmProcessDefinition>.
	If there is NO process creation then answer a <aTimeStamp> with the oldest possible value"
	| procNameDictionary procIdDictionary procInstancesCollection |

	procNameDictionary := processesCreationEventHistory at: aBpmProcessDefinition applicationName
								ifAbsent: [processesCreationEventHistory at: aBpmProcessDefinition applicationName put: Dictionary new] 
								ifPresent: [:dict | dict].

	procIdDictionary := procNameDictionary at: aBpmProcessDefinition processName 
									ifAbsent: [procNameDictionary at: aBpmProcessDefinition processName put: Dictionary new] 
									ifPresent: [:dictionary | dictionary].

	procInstancesCollection := procNameDictionary at: aBpmProcessDefinition id 
											ifAbsent: [procNameDictionary at: aBpmProcessDefinition id put: Set new] 
											ifPresent: [:instancesCollection | instancesCollection].

	^procInstancesCollection 
		ifNotEmpty: [:value | value last createdTime]
		ifEmpty: [TimeStamp fromString: '1-10-1970 11:55:00 am' ]