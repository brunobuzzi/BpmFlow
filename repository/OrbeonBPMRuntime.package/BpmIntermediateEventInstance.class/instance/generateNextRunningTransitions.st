process execution
generateNextRunningTransitions
	"The receiver fetch the possibles next transitions to transition definition."

	"parent is a regular gateway --> generate next transitions"
	parentArtifact isGatewayEvent ifFalse: [^super generateNextRunningTransitions].

	"timers are added in <events> collection when created other events are added when are triggered"
	self isTimerEvent ifFalse: [parentArtifact registerEvent: self].

	"Each Gateway Event handle a Timer Event in a different way"
	^parentArtifact generateNextRunningTransitionsFromEvent: self.