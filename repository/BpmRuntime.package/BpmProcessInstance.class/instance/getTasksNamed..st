tasks
getTasksNamed: aString

	^self getAllArtifacts select: [:each | each getDefinitionName = aString]