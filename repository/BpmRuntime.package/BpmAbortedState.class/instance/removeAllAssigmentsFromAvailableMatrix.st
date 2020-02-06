execution
removeAllAssigmentsFromAvailableMatrix
	"The receiver remove all <BpmTaskAssignment> from the <BpmRunningTasksMatrix> for the aborted <BpmProcessInstance> <process>"
	| applicationMatrix |

	applicationMatrix := process application availableTasksMatrix.

	^self removeAllAssigmentsFromMatrix: applicationMatrix