action
finalizeAssignment
	| finishedMatrix currentMatrix |

	self sendInformationMessage.

	assignment finalizeWithoutEndingTask. "finalize the assignment but does NOT the task"
	isFinalized := true.

	user moveFromCurrentToFinished: assignment in: self bpmEnvironment. "<user> move from current assignments to finished <assignment> "

	"add the assignment to finished matrix"
	finishedMatrix := self defaultFinishedTasksMatrixClass getMatrixForApplicationNamed: assignment applicationName.
	finishedMatrix addAssignment: assignment.

	currentMatrix := self defaultAvailableTasksMatrixClass getMatrixForApplicationNamed: assignment applicationName.

	assignment task addIterationBy: user.

	currentMatrix addTask: assignment task "a new Assignment is created for the same Task but other cycle in the Loop"