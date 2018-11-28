execution
addActivityToPerform: aBpmTaskInstance
	"Add the task <aBpmTaskInstance> to be performed and finished by the receiver"

	currentActivities add: aBpmTaskInstance.

	^self getAvailableProcessMatrix addTask: aBpmTaskInstance. "from <aBpmTaskInstance> create the assignment <BpmTaskAssignment>"