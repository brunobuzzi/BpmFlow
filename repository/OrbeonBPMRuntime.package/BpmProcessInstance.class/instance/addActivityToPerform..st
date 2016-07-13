running
addActivityToPerform: aBpmTaskInstance
	"Add the task <aBpmTaskInstance> to be performed and finished by the receiver"

	self getProcessMatrix addTask: aBpmTaskInstance.

	^currentActivities add: aBpmTaskInstance