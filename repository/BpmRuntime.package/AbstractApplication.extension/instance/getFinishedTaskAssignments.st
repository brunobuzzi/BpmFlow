*bpmruntime
getFinishedTaskAssignments
	| tasks |

	tasks := OrderedCollection new.

	finishedTasksMatrix rolesAndAssignmentDo: [:tasksAssign | tasks addAll: tasksAssign asArray]. "add tasks"

	^tasks