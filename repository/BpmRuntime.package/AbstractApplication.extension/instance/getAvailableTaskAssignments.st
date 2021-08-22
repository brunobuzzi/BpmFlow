*bpmruntime
getAvailableTaskAssignments
	| tasks |

	tasks := OrderedCollection new.

	availableTasksMatrix rolesAndAssignmentDo: [:tasksAssign | tasks addAll: tasksAssign asArray]. "add tasks"

	^tasks