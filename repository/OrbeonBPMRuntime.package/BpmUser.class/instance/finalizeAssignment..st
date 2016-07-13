assignment
finalizeAssignment: aBpmTaskAssignment
	"The receiver finalize the assignment <aBpmTaskAssignment>.
	If the assignment <aBpmTaskAssignment> has performers --> more than one role are going to work with the assignment.
	If the assignment <aBpmTaskAssignment>  has NO performers --> only one role is granted to work with"

	"a manager has untaken the assignment from the receiver --> the assignment can NOT be finalized by the receiver"
	(aBpmTaskAssignment user == self) ifFalse: [^self].

	aBpmTaskAssignment hasPerformers
	ifFalse: [self basicFinalizeAssignment: aBpmTaskAssignment] "regular assignment with one role only"
	ifTrue: [aBpmTaskAssignment incrementPerformerCounter.
		aBpmTaskAssignment isFinishedByPerformers "more than one role is going to work with this assignment "
		ifTrue: [self basicFinalizeAssignment: aBpmTaskAssignment]
		ifFalse: [
			self moveFromCurrentToFinished: aBpmTaskAssignment.
			aBpmTaskAssignment free]]