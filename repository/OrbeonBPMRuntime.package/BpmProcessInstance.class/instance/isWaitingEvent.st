other
isWaitingEvent
	"Answer whether or not the receiver is waiting for an event to occur"

	^(runningGateways select: [:each | each isEventGateway]) notEmpty