process execution
generateNextTranstionsForParallelEventGateway: aBpmParallelEventBasedGateway
	"The receiver generate the next running transitions as a child of Event Gateway <aBpmExclusiveEventBasedGateway>.
	ParallelEventGateway: wait for all events until the Process is finalized then finalize the Gateway but in the meantime generate next transitions of any event occurrence.
	If there is a Timer event then generate next transitions but do NOT finalize the timer"

	self isTimerEvent ifFalse: [self performFinalization]. "for parallel event gateways all events but timers are finalized when generating next transitions"

	^super generateNextRunningTransitions.