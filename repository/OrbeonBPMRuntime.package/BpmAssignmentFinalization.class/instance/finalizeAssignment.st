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

	assignNextToUser ifTrue: [ | assignments availableAssignments |
		availableAssignments := user getAllAvailableTaskAssignments.
		assignments := self process currentActivities collect: [:each | self getProcessMatrix getAssignmentFor: each].
		(assignments select: [:eachAssign | eachAssign notNil and: [availableAssignments includes: eachAssign]]) 
			do:[:each | user take: each].
		].