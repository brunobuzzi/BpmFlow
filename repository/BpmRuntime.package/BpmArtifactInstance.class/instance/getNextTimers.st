timers
getNextTimers
	"The receiver answer a collection with all events timers that are next to be executed"

	^outTransitions select: [:transition | transition endArtifactIsTimerEvent] thenCollect: [:transition | transition endArtifact]