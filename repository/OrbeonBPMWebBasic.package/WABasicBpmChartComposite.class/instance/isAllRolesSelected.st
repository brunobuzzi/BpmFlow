query variables
isAllRolesSelected

	^(self searchValueAt: 'role' ifAbsent: [false]) = ('All' translateFor: self session user)