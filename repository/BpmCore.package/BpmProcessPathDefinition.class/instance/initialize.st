other
initialize

	super initialize.

	transitions := OrderedCollection new.
	intermediateEvents := Dictionary new.	
	endEvents := Dictionary new.
	tasks := Dictionary new.
	gateways := Dictionary new.
	subProcessTasks := Dictionary new.
	scripts := Dictionary new.