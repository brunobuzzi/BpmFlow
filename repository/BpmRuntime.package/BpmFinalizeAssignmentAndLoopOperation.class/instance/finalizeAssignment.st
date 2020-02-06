action
finalizeAssignment
	"The receiver finalize the assingment and do a Loop.
	If the loop condition <aBpmCodeCondition> is <true>: the loop keep running
	If the loop condition <aBpmCodeCondition> is <false>: the loop is interrupted "
	| finishedMatrix currentMatrix task taskDefinition takenMatrix |

	task := assignment task.
	taskDefinition := task definition.

	self sendInformationMessage.

	((taskDefinition evaluateLoopIn: assignment process) result and: [taskDefinition loopMaximum > task numberOfIterations])
	ifTrue: [task addIterationBy: user.
				assignment finalizeWithoutEndingTask. "finalize the assignment but does NOT finalize the task"
				isFinalized := true.
				"remove the assignment from taken matrix"
				takenMatrix := assignment process getTakenProcessMatrix.
				takenMatrix removeAssignment: assignment.
				user moveFromCurrentToFinished: assignment in: self bpmEnvironment. "<user> move from current assignments to finished <assignment> "
				"by removing the perfomers first target the correct matrix (for the first performer) - issue #948"
				task createNewLoopForPerformers. "store current performers information and create newone for the next loop"
				currentMatrix := assignment application availableTasksMatrix.
				currentMatrix addTask: task. "a new Assignment is created for the same Task but is another cycle in the Loop"
				"add the assignment to finished matrix"
				finishedMatrix := assignment application finishedTasksMatrix.
				finishedMatrix addAssignment: assignment.]
	ifFalse: [(BpmFinalizeAssignmentAndResumeOperation on: assignment by: user) executeIt].