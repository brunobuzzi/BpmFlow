execution
removeAllAssigmentsFromMatrix: aBpmTasksHolderMatrix
	"The receiver remove all <BpmTaskAssignment> from the <aBpmTasksHolderMatrix> for the aborted <BpmProcessInstance> <process>"
	| processId taskAssigments |

	taskAssigments := Set new.
	processId := process processId.

	"all roles in the <BpmProcessInstance>"
	self getAllProcessRoles do: [:eachRole |
		taskAssigments addAll: (aBpmTasksHolderMatrix getAvailableTasksFor: eachRole name satisfying: {:e | e.processId = processId}).		
	].

	taskAssigments do: [:each | each removeFromCurrentMatrix].