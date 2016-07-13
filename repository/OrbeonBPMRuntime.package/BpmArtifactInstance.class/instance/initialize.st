other
initialize

	super initialize.

	creationTime := TimeStamp now.
	inTransitions := OrderedCollection new.
	outTransitions := OrderedCollection new.
	state := #created. "#created #processing #paused #pending #delayed #done"
	exceptions := OrderedCollection new.