other
initialize

	super initialize.

	detectedItems := OrderedCollection new.
	xpdlObjects := Dictionary new.
	visitedTransitions := Set new.
	hasStartNode := false.
	hasEndNode := false.