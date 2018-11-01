processes
getAllCreationProcessesWithStartTimerIn: aBpmEnvironment
	"Answer a collection of process definitions <BpmTopProcessDefinition> where the receiver has creation permission and the process is created by a Timer"

	^(self getAllProcessDefinitionIn: aBpmEnvironment) select: [:each | each hasCreationTimer and: [each canCreateProcessInstance: self]]