other
initialize

	super initialize.

	creationTime := TimeStamp now.
	executions := OrderedCollection with: creationTime.
	properties := Dictionary new.