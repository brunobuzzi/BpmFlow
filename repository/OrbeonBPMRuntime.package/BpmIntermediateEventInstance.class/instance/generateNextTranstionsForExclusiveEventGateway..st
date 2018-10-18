process execution
generateNextTranstionsForExclusiveEventGateway: aBpmExclusiveEventBasedGateway
	"The receiver generate the next running transitions as a child of Event Gateway <aBpmExclusiveEventBasedGateway>.
	ExclusiveEventGateway: wait for the first event then finalize the Gateway and generate next transitions"

	process finalizeGateway: aBpmExclusiveEventBasedGateway.

	self finalize. "the event is removed from <BpmTimerEventMonitor> singleton"

	super generateNextRunningTransitions.