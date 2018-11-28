process execution
generateNextTranstionsForInclusiveEventGateway: aBpmEventBasedGateway
	"The receiver generate the next running transitions as a child of Event Gateway <aBpmExclusiveEventBasedGateway>.
	InclusiveEventGateway: wait for all events until the Timer answer <true> then finalize the Gateway and generate next transitions"

	self isTimerEvent 
	ifTrue: [self finalize. "the event is removed from <BpmTimerEventMonitor> singleton"
				process finalizeGateway: aBpmEventBasedGateway.].

	super generateNextRunningTransitions.