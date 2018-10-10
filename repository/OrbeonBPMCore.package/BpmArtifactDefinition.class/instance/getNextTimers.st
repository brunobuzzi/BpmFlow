other
getNextTimers
	"The receiver answer a collection with all events timers that are next to be executed"

	^outTransitions select: [:transition | transition endArtifact isTimerEvent] thenCollect: [:transition | transition endArtifact]