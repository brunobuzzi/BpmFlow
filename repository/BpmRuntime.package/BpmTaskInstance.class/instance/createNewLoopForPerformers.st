process execution
createNewLoopForPerformers
	"The receiver store the current information about performers <aBpmPerformersTaskInstanceRegistry> and create a new registry for performers in the next loop"

	performersRegistry ifNil: [^self].

	performersLoops add: performersRegistry.
	
	performersRegistry := BpmPerformersTaskInstanceRegistry newForTask: self