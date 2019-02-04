operations
informUserWithEmptyPassword

	self closeAllInformationComponents.
	(self getTableNamed: 'Users' ifAbsent: [^self]) 
				information: ('Empty password is not allowed !' translateIn: self session)
				color: 'red'