operations
informUserAlreadyExist: aBpmUser

	self closeAllInformationComponents.
	(self getTableNamed: 'Users' ifAbsent: [^self]) 
				information: (('User named [', aBpmUser username, '] already exist !') translateIn: self session)
				color: 'red'