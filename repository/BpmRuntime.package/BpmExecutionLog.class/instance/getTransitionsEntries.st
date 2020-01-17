queries
getTransitionsEntries

	^logEntries select: [:each | each isTransitionEntry]