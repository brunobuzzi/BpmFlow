other
initialize

	super initialize.

	nextTransitions := OrderedCollection new.
	isFinalized := false.
	assignNextToUser := false