assignment
finalizeAssignmentAndResume: aBpmTaskAssignment takeNext: aBoolean
	"The receiver finalize the assignment <aBpmTaskAssignment>.
	If the assignment <aBpmTaskAssignment> has performers --> more than one role are going to work with the assignment.
	If the assignment <aBpmTaskAssignment>  has NO performers --> only one role is granted to work with"
	| finalizeOperation |

	"if the process has been paused or aborted --> <aBpmTaskAssignment> can not be finalized (the process is freeze)"
	aBpmTaskAssignment processIsRunning ifFalse: [^ProcessNotRunningException signal: 'The assigment can not be finalized because the process is NOT [running]'].

	finalizeOperation := BpmFinalizeAssignmentAndResumeOperation on: aBpmTaskAssignment by: self.
	finalizeOperation assignNextToUser: aBoolean. "if <true> assign next generated tasks to the receiver"

	^finalizeOperation executeIt