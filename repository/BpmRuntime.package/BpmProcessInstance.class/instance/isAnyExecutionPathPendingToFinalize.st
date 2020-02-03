execution states
isAnyExecutionPathPendingToFinalize
	"Answer whether or not any execution path of the receiver is pending to finalize.
	If any transition has no children and the end artifact of that transition is not an end event not a timer event --> that execution path is pending."

		^(transitions select: [:eachTransition | eachTransition hasChildren not and:[eachTransition endArtifactIsNotEndEvent and: [eachTransition endArtifactIsNotTimerEvent]]]) notEmpty
			or: [(self defaultTimerEventMonitor selectMonitoredEventWith: id) notEmpty]

	" - Transitions to end events do not have children transitions.
	  - Transitions to timer events could not have children transitions if the timer is not activated"