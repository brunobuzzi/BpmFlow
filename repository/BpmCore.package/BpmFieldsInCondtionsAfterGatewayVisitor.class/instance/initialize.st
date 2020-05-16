other
initialize

	super initialize.

	visitedTasks := Set new.
	visitedTransitions := Set new.
	missingEvaluationFields := Set new.