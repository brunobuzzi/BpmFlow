processes
getAllCreationProcessesWithStartTimerIn: aBpmEnvironment
	"Answer a collection of process definitions <BpmTopProcessDefinition> where the receiver has creation permission and the process is created by a Timer"

	^aBpmEnvironment getAllProcessDefinitions 
		select: [:each | each hasCreationTimer and: [(each canCreateProcessInstance: self) and:[systemRoot includesProcessCreationFor: each]]]