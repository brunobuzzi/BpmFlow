Updating
setTask: aBpmTaskInstance
	"The receiver set it task wtih <aBpmTaskInstance> and set related data"

	task := aBpmTaskInstance.
	taskName := aBpmTaskInstance getDefinitionName.

	hasContextApplications := process hasContextApplications