other
hasAnyTimerAsNextArtifact
	"Answer whether or not the receiver has a timer event as next artifact"

	^outTransitions anySatisfy: [:transition | transition endArtifact isTimerEvent]