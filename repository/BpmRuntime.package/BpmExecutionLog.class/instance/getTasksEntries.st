queries
getTasksEntries

	^logEntries select: [:each | each isTaskEntry]