testing
isRoleScopeSelected

	^(self searchValueAt: 'scope' ifAbsent: [^true]) = ('Role' translateFor: self session user)