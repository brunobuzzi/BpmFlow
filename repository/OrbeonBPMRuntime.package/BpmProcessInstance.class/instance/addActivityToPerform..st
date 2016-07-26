running
addActivityToPerform: aBpmTaskInstance
	"Add the task <aBpmTaskInstance> to be performed and finished by the receiver"

	currentActivities add: aBpmTaskInstance.

	^self getProcessMatrix addTask: aBpmTaskInstance. "from the task it create the assignment <BpmTaskAssignment>"