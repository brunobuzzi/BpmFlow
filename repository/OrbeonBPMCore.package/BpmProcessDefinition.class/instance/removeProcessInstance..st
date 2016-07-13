instantiation
removeProcessInstance: aBpmProcessInstance
	"The receiver remove the process instance <aBpmProcessInstance> from it's collection"

	^processInstances removeKey: aBpmProcessInstance id