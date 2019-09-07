process execution
performFinalization
	"The receiver finalize it self by calling the process <aBpmProcessInstance> to finalize it"

	super performFinalization.

	^process moveFromCurrentToExecuted: self