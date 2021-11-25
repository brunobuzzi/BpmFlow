operations
removeUser: aBpmUser

	(self componentValueAt: 'removeUser') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	aBpmUser canDelete 
	ifFalse: [self closeAllInformationComponents.
				^(self getTableNamed: 'Users' ifAbsent: [^self]) 
					information: ('User can not be deleted !!!' translateIn: self session)
					color: 'red'].

	self session systemRoot unregisterUser: aBpmUser.

	usersBatchedList remove: aBpmUser.

	self closeAllInformationComponents.
	(self getTableNamed: 'Users' ifAbsent: [^self]) 
				information: ('User deleted !!!' translateIn: self session)
				color: 'green'