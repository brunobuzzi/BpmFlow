api
getArtifactsEntries

	^logEntries select: [:each | each isArtifactInstanceEntry]