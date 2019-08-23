action
finalizeAssignment
	| finishedMatrix currentMatrix task taskDefinition |

	task := assignment task.
	taskDefinition := task definition.

	self sendInformationMessage.
	task addIterationBy: user.

	(taskDefinition evaluateLoopIn: assignment process)
	ifTrue: [assignment finalizeWithoutEndingTask. "finalize the assignment but does NOT the task"
				isFinalized := true.
				user moveFromCurrentToFinished: assignment in: self bpmEnvironment. "<user> move from current assignments to finished <assignment> "
				currentMatrix := self defaultAvailableTasksMatrixClass getMatrixForApplicationNamed: assignment applicationName.
				currentMatrix addTask: assignment task. "a new Assignment is created for the same Task but other cycle in the Loop"
				"add the assignment to finished matrix"
				finishedMatrix := self defaultFinishedTasksMatrixClass getMatrixForApplicationNamed: assignment applicationName.
				finishedMatrix addAssignment: assignment.]
	ifFalse: [].