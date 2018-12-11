other
initialize

	super initialize.

	detectedItems := OrderedCollection new.
	xpdlObjects := Set new.
	hasStartNode := false.
	hasEndNode := false.