assignment
finalizeAssignmentAndLoop: aBpmTaskAssignment
	"The receiver finalize the assignment <aBpmTaskAssignment> but NOT the Task (for Task with Loops only).
	If the assignment <aBpmTaskAssignment> has performers --> more than one role are going to work with the assignment.
	If the assignment <aBpmTaskAssignment>  has NO performers --> only one role is granted to work with"
	| finalizeOperation |

	"if the process has been paused or aborted --> <aBpmTaskAssignment> can not be finalized (the process is freeze)"
	aBpmTaskAssignment processIsRunning ifFalse: [^ProcessNotRunningException signal: 'The assigment can not be finalized because the process is NOT [running]'].
	aBpmTaskAssignment task hasLoop ifFalse: [^ImproperBpmOperationException signal: 'A task without a Loop can no finalize and Loop'].

	finalizeOperation := BpmFinalizeAssignmentAndLoopOperation on: aBpmTaskAssignment by: self.

	^finalizeOperation executeIt