execution
setProcess: aBpmProcessInstance
	"The receiver set it process wtih <aBpmProcessInstance> and set process related data"

	process := aBpmProcessInstance.
	processId := aBpmProcessInstance id.
	processName := aBpmProcessInstance processName.
	hasContextApplications := aBpmProcessInstance hasContextApplications.