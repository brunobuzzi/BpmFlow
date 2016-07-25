running
addActivityToPerform: aBpmTaskInstance
	"Add the task <aBpmTaskInstance> to be performed and finished by the receiver"

	self getProcessMatrix addTask: aBpmTaskInstance. "from the task it create the assignment <BpmTaskAssignment>"

	^currentActivities add: aBpmTaskInstance