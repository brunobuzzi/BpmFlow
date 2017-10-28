process execution
generateNextRunningTransitions

	super generateNextRunningTransitions.

	self isAttachedEvent ifFalse: [self finalize].