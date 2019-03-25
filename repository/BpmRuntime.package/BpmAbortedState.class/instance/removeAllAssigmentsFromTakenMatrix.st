execution
removeAllAssigmentsFromTakenMatrix
	"The receiver remove all <BpmTaskAssignment> from the <BpmRunningTasksMatrix> for the aborted <BpmProcessInstance> <process>"
	| applicationMatrix |

	applicationMatrix := self defaultTakenTasksMatrixClass 
									getMatrixForApplicationNamed: process getApplicationName 
									ifAbsent: [^NoMatrixForApplicationException signal: 'No Task Matrix for Application [', process getApplicationName, ']'].

	^self removeAllAssigmentsFromMatrix: applicationMatrix