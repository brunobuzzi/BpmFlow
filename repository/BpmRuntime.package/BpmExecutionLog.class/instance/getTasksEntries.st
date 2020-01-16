api
getTasksEntries

	^logEntries select: [:each | each isTaskEntry]