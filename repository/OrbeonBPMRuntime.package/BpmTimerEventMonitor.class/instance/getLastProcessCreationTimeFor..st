monitor process creation
getLastProcessCreationTimeFor: aBpmProcessDefinition
	"The receiver answer <aTimeStamp> of the last process creation executed for <aBpmProcessDefinition>.
	If there is NO process creation then answer a <aTimeStamp> with the oldest possible value"
	| procNameDictionary procInstancesCollection |

	procNameDictionary := processesCreationEventHistory at: aBpmProcessDefinition applicationName
								ifAbsent: [processesCreationEventHistory at: aBpmProcessDefinition applicationName put: Dictionary new] 
								ifPresent: [:dict | dict].

	procInstancesCollection := procNameDictionary at: aBpmProcessDefinition processName 
									ifAbsent: [procNameDictionary at: aBpmProcessDefinition processName put: OrderedCollection new] 
									ifPresent: [:collection | collection].

	^(procInstancesCollection select: [:each | each version = aBpmProcessDefinition version]) 
		ifNotEmpty: [:value | value last createdTime]
		ifEmpty: [self getFirstComparisionTimeStamp]