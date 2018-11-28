other
initialize

	super initialize.

	isAddingRol := false.
	model := BpmUser new.
	resetPasswords := Dictionary new.

	self initializeBatchedLists.

	self setShowToElementNamed: 'search-area'. "the search-are is shown by default"