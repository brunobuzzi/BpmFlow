queries
getArtifactsEntries

	^logEntries select: [:each | each isArtifactInstanceEntry]