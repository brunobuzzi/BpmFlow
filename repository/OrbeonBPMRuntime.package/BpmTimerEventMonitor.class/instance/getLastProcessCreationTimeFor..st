monitoring
getLastProcessCreationTimeFor: aBpmProcessDefinition
	"The receiver answer <aTimeStamp> of the last process creation executed for <aBpmProcessDefinition>.
	If there is NO process creation then answer a <aTimeStamp> with the oldest possible value"
	| procNameDictionary procInstancesCollection |

	procNameDictionary := processesCreationEventHistory at: aBpmProcessDefinition applicationName
								ifAbsent: [processesCreationEventHistory at: aBpmProcessDefinition applicationName put: Dictionary new] 
								ifPresent: [:dict | dict].

	procInstancesCollection := procNameDictionary at: aBpmProcessDefinition processName 
									ifAbsent: [procNameDictionary at: aBpmProcessDefinition processName put: OrderedCollection new] 
									ifPresent: [:dictionary | dictionary].

	^(procInstancesCollection select: [:each | each version = aBpmProcessDefinition version]) 
		ifNotEmpty: [:value | value last createdTime]
		ifEmpty: [TimeStamp fromString: '1-10-1970 11:55:00 am' ]