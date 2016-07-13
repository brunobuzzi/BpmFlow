assignment
basicFinalizeAssignment: aBpmTaskAssignment
	"The receiver finalize the assignment <aBpmTaskAssignment>"
	| finishedMatrix |

	aBpmTaskAssignment finalize.

	self moveFromCurrentToFinished: aBpmTaskAssignment.

	"move the <aBpmTaskAssignment> to finished assignments Matrix"
	finishedMatrix := self getFinishedMatrixManagerClass getMatrixForApplicationNamed: aBpmTaskAssignment applicationName.

	finishedMatrix addAssignment: aBpmTaskAssignment.

	aBpmTaskAssignment generateNextRunningTransitions.