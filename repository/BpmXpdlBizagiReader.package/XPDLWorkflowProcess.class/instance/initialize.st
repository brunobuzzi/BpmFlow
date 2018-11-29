other
initialize

	super initialize.

	activities := Dictionary new.
	lanes := Dictionary new.
	transitions := OrderedCollection new.
	endNodes := OrderedCollection new.
	embeddedSubprocesses := Dictionary new.