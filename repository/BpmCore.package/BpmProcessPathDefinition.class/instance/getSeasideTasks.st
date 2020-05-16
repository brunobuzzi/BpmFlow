get artifacts
getSeasideTasks

	^self getAllArtifacts select: [:each | each isSeasideTask]