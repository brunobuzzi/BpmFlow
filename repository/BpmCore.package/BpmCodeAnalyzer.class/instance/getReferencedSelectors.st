ast queries
getReferencedSelectors

	^parser allChildren select: [:each | each isMessage] thenCollect: [:each | each selector]