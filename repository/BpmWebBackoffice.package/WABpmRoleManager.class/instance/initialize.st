other
initialize

	super initialize.

	isAddingUser := false.
	isBackoffice := false.
	isAdmin := false.
	newUser := self defaultBpmUserClass new.

	self initializeBatchedLists.