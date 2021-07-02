summary
summaryFields

	^self queryNodes select: [:each | each isSummary] thenCollect: [:each | each name].