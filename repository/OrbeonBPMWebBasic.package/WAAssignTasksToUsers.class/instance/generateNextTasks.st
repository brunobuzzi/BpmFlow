other
generateNextTasks
	| assignmentFinalization currentActivities newTasks |

	currentActivities := OrderedCollection withAll: (assignmentToFinish process currentActivities asArray remove: taskToFinish; yourself).

	assignmentFinalization := self session user finalizeAssignment: assignmentToFinish.

	newTasks := assignmentToFinish process currentActivities asArray removeAll: currentActivities; yourself.

	self model: newTasks