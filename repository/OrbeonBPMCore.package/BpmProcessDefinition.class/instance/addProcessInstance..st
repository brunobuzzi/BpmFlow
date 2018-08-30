instantiation
addProcessInstance: aBpmProcessInstance
	"The receiver add the process instance <aBpmProcessInstance> to it's collection"

	processInstancesSet add: aBpmProcessInstance.
	^processInstances at: aBpmProcessInstance id put: aBpmProcessInstance