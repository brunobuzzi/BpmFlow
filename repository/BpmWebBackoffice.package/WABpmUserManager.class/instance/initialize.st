other
initialize

	super initialize.

	isAddingRol := false.
	model := self defaultBpmUserClass new.
	resetPasswords := Dictionary new.

	self initializeBatchedLists.