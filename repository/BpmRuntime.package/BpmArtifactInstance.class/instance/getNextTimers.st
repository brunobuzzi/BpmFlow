timers
getNextTimers
	"The receiver answer a collection with all events timers that are next to be executed"
	| nextTimers |

	nextTimers := OrderedCollection new.
	(outTransitions select: [:transition | transition endArtifactIsTimerEvent]) 
		do: [:transition| transition endArtifactDo: [:artifact | nextTimers add: artifact]].
 
	^nextTimers