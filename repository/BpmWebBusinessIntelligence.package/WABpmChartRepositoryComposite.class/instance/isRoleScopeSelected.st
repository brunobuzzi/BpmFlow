testing
isRoleScopeSelected

	^(self searchValueAt: 'scope' ifAbsent: [^true]) = ('Role' translateIn: self session)