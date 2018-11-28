query variables
isAllRolesSelected

	^(self searchValueAt: 'role' ifAbsent: [^true]) = ('All' translateFor: self session user)