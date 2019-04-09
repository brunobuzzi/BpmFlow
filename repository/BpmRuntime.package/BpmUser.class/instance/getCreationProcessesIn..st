processes
getCreationProcessesIn: aBpmEnvironment
	"Answer a collection of latest process definitions <BpmTopProcessDefinition> where the receiver has creation permission"

	^(self getProcessDefinitionLatestVersionsIn: aBpmEnvironment) select: [:each | (each canCreateProcessInstance: self) and: [each isAvailable]]