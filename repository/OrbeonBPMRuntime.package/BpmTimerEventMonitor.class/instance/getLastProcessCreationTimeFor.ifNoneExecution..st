monitor process creation
getLastProcessCreationTimeFor: aBpmProcessDefinition ifNoneExecution: aBlock
	"The receiver answer <aTimeStamp> of the last process creation executed for <aBpmProcessDefinition>.
	If there is NO process creation then answer a <aTimeStamp> with the oldest possible value"
	| procNameDictionary procInstancesCollection |

	procNameDictionary := processesCreationEventHistory at: aBpmProcessDefinition applicationName
								ifAbsent: [^aBlock value] 
								ifPresent: [:dict | dict].

	procInstancesCollection := procNameDictionary at: aBpmProcessDefinition processName 
									ifAbsent: [^aBlock value] 
									ifPresent: [:collection | collection].

	^(procInstancesCollection select: [:each | each version = aBpmProcessDefinition version]) 
		ifNotEmpty: [:value | value last createdTime]
		ifEmpty: aBlock