assignment
untake: aBpmTaskAssignment
	"The receiver untake the assigned task <aBpmTaskAssignment>. see #untakeForced:"
	| untakeProcedure |

	aBpmTaskAssignment canUnassign ifFalse: [^CanNotUntakeTaskException signal: 'The user [', self userName, '] can NOT untake the assignment' ].
	aBpmTaskAssignment processIsRunning ifFalse: [^ProcessNotRunningException signal: 'The assignment can not be untaken by the user because the process is NOT [running]'].
	aBpmTaskAssignment hasAutomaticTaskAssignation ifTrue: [^UntakeWithAutomaticAssignationException signal: 'An Assignment with automatic assignation policy can not be untaken'].

	untakeProcedure := BpmUntakeAssignmentOperation on: aBpmTaskAssignment by: self.

	untakeProcedure executeIt