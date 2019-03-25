action
finalizeAssignment
	| finishedMatrix currentActivities |

	assignment finalize. "move the <task> of the <assignment> from process <currentActivities> to process <executedActivities>"
	isFinalized := true.

	user moveFromCurrentToFinished: assignment in: self bpmEnvironment. "<user> move from current assignments to finished <assignment> "

	"add the assignment to finished matrix"
	finishedMatrix := self defaultFinishedTasksMatrixClass getMatrixForApplicationNamed: assignment applicationName.
	finishedMatrix addAssignment: assignment.

	"generate next transitions and put New Tasks in the Application Running Matrix"
	currentActivities := OrderedCollection withAll: self process currentActivities.
	nextTransitions := assignment generateNextRunningTransitions. 

	"ifTrue: the same <user> <aBpmUser> that finished the task is going to take next generated tasks"
	assignNextToUser ifTrue: [ | assignments availableAssignments newActivities |
		availableAssignments := user getAllAvailableTaskAssignmentsIn: self process bpmEnvironment.
		newActivities := self process currentActivities asArray removeAll: currentActivities; yourself.
		assignments := newActivities collect: [:each | self getAvailableProcessMatrix getAssignmentFor: each].
		(assignments select: [:eachAssign | eachAssign notNil and: [availableAssignments includes: eachAssign]]) 
			do:[:each | user take: each].
		].

	self sendInformationMessage.