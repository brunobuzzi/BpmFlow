operations
modifyRole: rol value: aBoolean

	isAddingRol := false.

	aBoolean ifFalse: [^self].

	addRoleBatchedList add: selectedObject.

	rol grantUser: selectedObject.

	self closeAllInformationComponents.
	(self getTableNamed: 'RolsOfSelectedUser' ifAbsent: [^self]) 
				information: ('User Granted !!!' translateFor: self session user)
				color: 'green'