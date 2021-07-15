other
initialize

	super initialize.

	isAddingRol := false.
	model := BpmUser new.
	resetPasswords := Dictionary new.

	self initializeBatchedLists.