events
getTimerEvents

	^attachedEvents select: [:each | each isTimerEvent]