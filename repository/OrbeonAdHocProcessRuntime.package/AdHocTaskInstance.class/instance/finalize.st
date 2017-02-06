other
finalize
	"The receiver finalize it self by calling the process <anAdHocProcessInstance> to finalize it"

	state := #done.

	^process moveFromCurrentToExecuted: self