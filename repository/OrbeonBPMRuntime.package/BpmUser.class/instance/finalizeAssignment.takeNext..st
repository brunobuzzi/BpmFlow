assignment
finalizeAssignment: aBpmTaskAssignment takeNext: aBoolean
	"The receiver finalize the assignment <aBpmTaskAssignment>.
	If the assignment <aBpmTaskAssignment> has performers --> more than one role are going to work with the assignment.
	If the assignment <aBpmTaskAssignment>  has NO performers --> only one role is granted to work with"

	"if the process has been paused or aborted --> <aBpmTaskAssignment> can not be finalized (the process is freeze)"
	aBpmTaskAssignment process isRunning ifFalse: [^ProcessNotRunningException signal: 'The assigment can not be finalized because the process is NOT [running]'].

	"a manager has untaken the assignment from the receiver --> the assignment can NOT be finalized by the receiver"
	(aBpmTaskAssignment user == self) ifFalse: [^BpmAssignmentFinalization on: aBpmTaskAssignment by: self].

	"regular assignment with one role only"
	aBpmTaskAssignment hasPerformers ifFalse: [^self basicFinalizeAssignment: aBpmTaskAssignment takeNext: aBoolean]. 

	"more than one role is going to work with this assignment "
	aBpmTaskAssignment incrementPerformerCounter.
	aBpmTaskAssignment isFinishedByPerformers ifTrue: [^self basicFinalizeAssignment: aBpmTaskAssignment takeNext: aBoolean].

	self moveFromCurrentToFinished: aBpmTaskAssignment. "finalized by a Performer (NOT all performers have worked on the task)"
	aBpmTaskAssignment free.

	^BpmAssignmentFinalization on: aBpmTaskAssignment by: self "assignment not finalized"