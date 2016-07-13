running
moveFromCurrentToExecuted: aBpmTaskInstance
	"The receiver move the bpm activity <aBpmTaskInstance> from the current collection <currentActivities> to the executed collection <executedActivities>"

	currentActivities remove: aBpmTaskInstance ifAbsent: [self throwNoSuchActivityException: aBpmTaskInstance].

	^executedActivities add: aBpmTaskInstance