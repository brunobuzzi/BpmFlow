action
finalizeAssignment
	"The receiver finalize the assingment and do a Loop.
	If the loop condition <aBpmCodeCondition> is <true>: the loop keep running
	If the loop condition <aBpmCodeCondition> is <false>: the loop is interrupted "
	| finishedMatrix currentMatrix task taskDefinition |

	task := assignment task.
	taskDefinition := task definition.

	self sendInformationMessage.
	task addIterationBy: user.

	((taskDefinition evaluateLoopIn: assignment process) and: [taskDefinition loopMaximum < task numberOfIterations])
	ifTrue: [assignment finalizeWithoutEndingTask. "finalize the assignment but does NOT finalize the task"
				isFinalized := true.
				user moveFromCurrentToFinished: assignment in: self bpmEnvironment. "<user> move from current assignments to finished <assignment> "
				currentMatrix := self defaultAvailableTasksMatrixClass getMatrixForApplicationNamed: assignment applicationName.
				currentMatrix addTask: assignment task. "a new Assignment is created for the same Task but is another cycle in the Loop"
				"add the assignment to finished matrix"
				finishedMatrix := self defaultFinishedTasksMatrixClass getMatrixForApplicationNamed: assignment applicationName.
				finishedMatrix addAssignment: assignment.]
	ifFalse: [(BpmFinalizeAssignmentAndResumeOperation on: assignment by: user) executeIt].