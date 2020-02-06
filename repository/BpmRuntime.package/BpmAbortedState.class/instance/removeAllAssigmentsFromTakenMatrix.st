execution
removeAllAssigmentsFromTakenMatrix
	"The receiver remove all <BpmTaskAssignment> from the <BpmRunningTasksMatrix> for the aborted <BpmProcessInstance> <process>"
	| applicationMatrix |

	applicationMatrix := process application takenTasksMatrix.

	^self removeAllAssigmentsFromMatrix: applicationMatrix