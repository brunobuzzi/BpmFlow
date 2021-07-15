other
initialize

	super initialize.

	isAddingUser := false.
	isBackoffice := false.
	isAdmin := false.
	newUser := BpmUser new.

	self initializeBatchedLists.