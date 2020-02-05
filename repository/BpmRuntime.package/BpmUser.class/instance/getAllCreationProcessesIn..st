processes
getAllCreationProcessesIn: aBpmEnvironment
	"Answer a collection of process definitions <BpmTopProcessDefinition> where the receiver has creation permission"

	^aBpmEnvironment getAllProcessDefinitions select: [:each | each canCreateProcessInstance: self]