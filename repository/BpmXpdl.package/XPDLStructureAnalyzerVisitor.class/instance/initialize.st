other
initialize

	super initialize.

	packageApplication := Dictionary new.
	detectedItems := OrderedCollection new.
	xpdlObjects := Dictionary new.
	visitedActivities := Set new.
	visitedTransitions := Set new.
	visitedEvents := Set new.
	hasStartNode := false.
	hasEndNode := false.