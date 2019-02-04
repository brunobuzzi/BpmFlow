operations
informUserAdded: aBpmUser

	self closeAllInformationComponents.
	(self getTableNamed: 'Users' ifAbsent: [^self]) 
				information: (('User named [', aBpmUser username, '] has been added !') translateIn: self session)
				color: 'green'