operations
updateListWith: aBpmUser

	usersBatchedList add: aBpmUser.

	self informUserAdded: aBpmUser.