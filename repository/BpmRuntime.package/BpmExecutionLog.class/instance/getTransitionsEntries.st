api
getTransitionsEntries

	^logEntries select: [:each | each isTransitionEntry]