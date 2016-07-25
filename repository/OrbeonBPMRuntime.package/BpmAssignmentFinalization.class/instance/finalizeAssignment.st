other
finalizeAssignment
	"The receiver finalize it's assignment <aBpmTaskAssignment> and the finalizer is the <BpmUser> <user>"
	| finishedMatrix |

	assignment finalize.
	isFinalized := true.

	user moveFromCurrentToFinished: assignment. "<user> move from current assignments to finished <assignment> "

	"add the assignment to finished matrix"
	finishedMatrix := self getFinishedMatrixManagerClass getMatrixForApplicationNamed: assignment applicationName.
	finishedMatrix addAssignment: assignment.

	"generate next transitions and put New Tasks in the Application Running Matrix"
	nextTransitions := assignment generateNextRunningTransitions. 

	assignNextToUser ifTrue: [].