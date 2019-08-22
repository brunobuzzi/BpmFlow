action
finalizeAssignment
	| finishedMatrix currentActivities |

	self sendInformationMessage.

	assignment finalize. "move the <task> of the <assignment> from process <currentActivities> to process <executedActivities>"
	isFinalized := true.

	user moveFromCurrentToFinished: assignment in: self bpmEnvironment. "<user> move from current assignments to finished <assignment> "

	"add the assignment to finished matrix"
	finishedMatrix := self defaultFinishedTasksMatrixClass getMatrixForApplicationNamed: assignment applicationName.
	finishedMatrix addAssignment: assignment.

	"generate next transitions and put New Tasks in the Application Running Matrix"
	currentActivities := OrderedCollection withAll: self process currentActivities.

	"nextTransitions := assignment generateNextRunningTransitions. "