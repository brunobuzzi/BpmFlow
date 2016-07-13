other
addOutTransition: aBpmTransitionDefinition
	"The receiver add transition <aBpmTransitionDefinition> as an OUTgoing transition.
	If the transition is the default flow then set it."

	aBpmTransitionDefinition isDefaultFlow ifTrue: [self defaultTransition: aBpmTransitionDefinition].

	^outTransitions add: aBpmTransitionDefinition