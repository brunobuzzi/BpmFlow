operations
removeUser: aBpmUser

	aBpmUser canDelete 
	ifFalse: [self closeAllInformationComponents.
				^(self getTableNamed: 'Users' ifAbsent: [^self]) 
					information: ('User can not be deleted !!!' translateFor: self session user)
					color: 'red'].

	usersBatchedList remove: aBpmUser.

	aBpmUser removeFromCache.

	self closeAllInformationComponents.
	(self getTableNamed: 'Users' ifAbsent: [^self]) 
				information: ('User deleted !!!' translateFor: self session user)
				color: 'green'