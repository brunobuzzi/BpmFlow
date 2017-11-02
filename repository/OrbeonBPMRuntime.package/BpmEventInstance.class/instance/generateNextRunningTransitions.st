process execution
generateNextRunningTransitions
	"The receiver fetch the possibles next transitions to transition definition.
	1- Ask the path definition for next transitions.
	2- Create a concrete transtition for each definition in 1, and add it as running transitions."

	super generateNextRunningTransitions.

	"if the receiver is independent then is finalized. if the receiver is attached to <aBpmTask> then is the task that send the #finalize to the event"
	self isAttachedEvent ifFalse: [self finalize].