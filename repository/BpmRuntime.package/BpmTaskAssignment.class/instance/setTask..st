task handling
setTask: aBpmTaskInstance
	"The receiver set it task wtih <aBpmTaskInstance> and set related data"

	task := aBpmTaskInstance.
	aBpmTaskInstance assignment: self. 

	taskName := aBpmTaskInstance getDefinitionName.

	hasContextApplications := process hasContextApplications