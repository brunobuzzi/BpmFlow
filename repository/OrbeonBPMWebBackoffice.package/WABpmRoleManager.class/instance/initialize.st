other
initialize

	super initialize.

	isAddingUser := false.
	isBackoffice := false.
	isAdmin := false.
	newUser := BpmUser new.

	self initializeBatchedLists.

	self setShowToElementNamed: 'search-area'. "the search-are is shown by default"