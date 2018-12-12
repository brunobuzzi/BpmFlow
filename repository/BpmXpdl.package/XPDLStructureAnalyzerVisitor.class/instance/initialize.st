other
initialize

	super initialize.

	packageApplication := Dictionary new.
	detectedItems := OrderedCollection new.
	xpdlObjects := Dictionary new.
	visitedTransitions := Set new.
	hasStartNode := false.
	hasEndNode := false.