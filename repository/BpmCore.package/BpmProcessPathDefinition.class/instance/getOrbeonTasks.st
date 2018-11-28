get artifacts
getOrbeonTasks

	^self getAllArtifacts select: [:each | each isOrbeonTask]