processes
getAllCreationProcessesIn: aBpmEnvironment
	"Answer a collection of process definitions <BpmTopProcessDefinition> where the receiver has creation permission"

	^(self getAllProcessDefinitionIn: aBpmEnvironment) select: [:each | each canCreateProcessInstance: self]