assignment
untake: aBpmTaskAssignment
	"The receiver untake the assigned task <aBpmTaskAssignment>"

	"the task was finalized by the user before the manager could make the untake operation"
	(self includesCurrentAssignment: aBpmTaskAssignment) ifFalse: [^self].

	aBpmTaskAssignment hasPerformers 
	ifTrue: [aBpmTaskAssignment removeLastWorker]. "remove the last user and role from the BpmTaskInstace"

	aBpmTaskAssignment free. "add to free matrix, user set to nil"

	"remove it from the the current assignment inbox"
	"add the assignment to released inbox"
	self moveFromCurrentToReleased: aBpmTaskAssignment.