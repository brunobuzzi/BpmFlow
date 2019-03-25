other
initialize

	super initialize.

	isAddingRol := false.
	model := self defaultBpmUserClass new.
	resetPasswords := Dictionary new.

	self initializeBatchedLists.

	self setShowToElementNamed: 'search-area'. "the search-are is shown by default"