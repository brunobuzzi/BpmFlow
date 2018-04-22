assignment
untake: aBpmTaskAssignment
	"The receiver untake the assigned task <aBpmTaskAssignment>"
	| untakeProcedure |

	aBpmTaskAssignment canUnassign ifFalse: [^CanNotUntakeTaskException signal: 'The user [', self userName, '] can NOT untake the assignment' ].
	aBpmTaskAssignment processIsRunning ifFalse: [^ProcessNotRunningException signal: 'The assignment can not be untaken by the user because the process is NOT [running]'].

	untakeProcedure := BpmUntakeAssignmentOperation on: aBpmTaskAssignment by: self.

	untakeProcedure executeIt