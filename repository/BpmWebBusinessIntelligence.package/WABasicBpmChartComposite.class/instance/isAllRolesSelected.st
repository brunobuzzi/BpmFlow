query variables
isAllRolesSelected

	^(self searchValueAt: 'role' ifAbsent: [^true]) = ('All' translateIn: self session)