import
storeBpmProcessDefinition
	"(After confirmation) 
	The recevier store generated <BpmProcessDefinition> instances on global Cache"

	processGenerator hasImmutableProcesses ifTrue: [^self].

	processGenerator storeGeneratedProcesses