queries
getFinalizedTasksEntries

	^logEntries select: [:each | each isTaskEntry and:[each isFinalizationEntry]]