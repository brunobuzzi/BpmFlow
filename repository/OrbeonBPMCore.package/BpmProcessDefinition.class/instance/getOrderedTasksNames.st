get artifacts
getOrderedTasksNames

	^executionPath getOrderedTasks collect: [:each | each name]