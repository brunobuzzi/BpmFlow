execution
generateNextRunningTransitions
	"The receiver <BpmTask> fetch the possibles next transitions to transition definition.
	1- Ask the path definition for next transitions.
	2- Create a concrete transtition for each definition in 1, and add it as running transitions."

	task ifNil: [^nil].

	^task generateNextRunningTransitions