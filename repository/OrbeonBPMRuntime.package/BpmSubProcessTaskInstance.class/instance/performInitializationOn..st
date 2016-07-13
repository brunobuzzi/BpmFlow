other
performInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>"

	processInstance := definition createProcessInstance: nil.

	aBpmProcessInstance addSubProcess: processInstance. "here also set the parent process"

	processInstance creatorTask: self;
		triggerStartEvent.