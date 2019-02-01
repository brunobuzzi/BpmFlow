operations
removeRolFromUser: aBpmRole

	userRolesBatchedList remove: aBpmRole.

	aBpmRole ungrantUser: selectedObject.

	self closeAllInformationComponents.
	(self getTableNamed: 'RolsOfSelectedUser' ifAbsent: [^self]) 
				information: ('User Ungranted !!!' translateIn: self session)
				color: 'green'