other
getArtifactsEntries

	^logEntries select: [:each | each isArtifactInstance]