process execution
generateNextRunningTransitions
	"The receiver fetch the possibles next transitions to transition definition."

	parentArtifact isGatewayEvent ifFalse: [^super generateNextRunningTransitions].

	self finalize. "remove the Timer from <BpmTimerEventMonitor> singleton"