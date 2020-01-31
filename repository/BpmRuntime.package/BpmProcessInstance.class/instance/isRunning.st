execution states
isRunning
	"Answer whether or not the receiver is in running state. See: #1081.
	Running: if any started path has not reached an end event yet.
	Completed: if all started path has reached an end event"

	^self currentState isRunning or:[currentActivities notEmpty or:[runningGateways notEmpty]]