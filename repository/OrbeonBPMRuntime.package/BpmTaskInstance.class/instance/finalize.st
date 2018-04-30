process execution
finalize
	"The receiver finalize it self by calling the process <aBpmProcessInstance> to finalize it"

	super finalize.

	^process moveFromCurrentToExecuted: self