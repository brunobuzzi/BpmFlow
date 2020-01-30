execution states
isRunning

	^self currentState isRunning or:[currentActivities notEmpty or:[runningGateways notEmpty]]