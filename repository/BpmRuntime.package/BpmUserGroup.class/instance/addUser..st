users
addUser: aBpmUser

	(aBpmUser hasAccessTo: environment) ifFalse: [^ImproperBpmOperationException signal: 'User [', aBpmUser username, '] is not register in User Group environment'].

	aBpmUser addToGroup: self.

	^users add: aBpmUser