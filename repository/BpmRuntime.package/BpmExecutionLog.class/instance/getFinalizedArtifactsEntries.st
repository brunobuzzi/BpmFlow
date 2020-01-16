other
getFinalizedArtifactsEntries

	^logEntries select: [:each | each isArtifactInstance and:[each isFinalizationEntry]]