execution
removeAllAssigmentsFromRunningMatrix
	"The receiver remove all <BpmTaskAssignment> from the <BpmRunningTasksMatrix> for the aborted <BpmProcessInstance> <process>"
	| applicationMatrix processId taskAssigments |

	applicationMatrix := BpmRunningTasksMatrix getMatrixForApplicationNamed: process getApplicationName ifAbsent: [^NoMatrixForApplicationException signal: 'No Task Matrix for Application [', process getApplicationName, ']'].

	taskAssigments := OrderedCollection new.
	processId := process processId.

	self getAllProcessRoles do: [:eachRole |
		taskAssigments addAll: (applicationMatrix getAvailableTasksFor: eachRole name satisfying: {:e | e.processId = processId}).		
	].

	taskAssigments do: [:each | each removeFromMatrix].