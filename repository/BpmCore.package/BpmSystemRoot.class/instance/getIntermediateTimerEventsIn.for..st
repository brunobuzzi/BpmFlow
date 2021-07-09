events monitor
getIntermediateTimerEventsIn: aBpmEnvironment for: aBpmUser
	"The receiver answer a collection of all intermediate <BpmEventInstance> active in the System that <aBpmUser> has access to."

	^eventsMonitor getIntermediateTimerEventsIn: aBpmEnvironment for: aBpmUser