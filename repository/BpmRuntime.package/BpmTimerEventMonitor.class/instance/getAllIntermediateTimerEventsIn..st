timer intermediate
getAllIntermediateTimerEventsIn: aBpmEnvironment
	"The receiver answer a collection of all intermediate <BpmEventInstance> active in the System"

	^self monitoredEvents select: [:eventInstance | eventInstance bpmEnvironment == aBpmEnvironment]