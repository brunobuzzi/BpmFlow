other
initialize

	super initialize.

	roots := Set new.
	nodesArtifactsMap := Dictionary new.
	allNodes := Set new.
	visitedTransitions := OrderedCollection new.
	loopTolerance := 0.