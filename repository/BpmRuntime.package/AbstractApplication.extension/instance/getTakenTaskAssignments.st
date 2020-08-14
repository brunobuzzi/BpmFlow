*bpmruntime
getTakenTaskAssignments
	| tasks |

	tasks := OrderedCollection new.

	takenTasksMatrix rolesAndAssignmentDo: [:tasksAssign | tasks addAll: tasksAssign asArray]. "add tasks"

	^tasks