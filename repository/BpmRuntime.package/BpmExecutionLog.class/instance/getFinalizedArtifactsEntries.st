api
getFinalizedArtifactsEntries

	^logEntries select: [:each | each isArtifactInstanceEntry and:[each isFinalizationEntry]]