assignment
untake: aBpmTaskAssignment
	"The receiver untake the assigned task <aBpmTaskAssignment>"

	aBpmTaskAssignment canUnassign ifFalse: [^CanNotUntakeTaskException signal: 'The user [', self userName, '] can NOT untake the assignment' ].
	aBpmTaskAssignment processIsRunning ifFalse: [^ProcessNotRunningException signal: 'The assignment can not be untaken by the user because the process is NOT [running]'].

	"the task was finalized by the user before the manager could make the untake operation"
	(self includesCurrentAssignment: aBpmTaskAssignment) ifFalse: [^self].

	aBpmTaskAssignment hasPerformers 
	ifTrue: [aBpmTaskAssignment removeLastWorker]. "remove the last user and role from the BpmTaskInstace"

	aBpmTaskAssignment free. "add to free matrix, <user> set to nil"

	"remove it from the the current assignment inbox"
	"add the assignment to released inbox"
	self moveFromCurrentToReleased: aBpmTaskAssignment.