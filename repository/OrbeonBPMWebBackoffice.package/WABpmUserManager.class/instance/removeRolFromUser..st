operations
removeRolFromUser: aBpmRole

	userRolesBatchedList remove: aBpmRole.

	aBpmRole ungrantUser: selectedObject.

	self closeAllInformationComponents.
	(self getTableNamed: 'RolsOfSelectedUser' ifAbsent: [^self]) 
				information: ('User Ungranted !!!' translateFor: self session user)
				color: 'green'