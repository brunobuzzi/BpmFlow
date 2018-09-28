testing
isUserScopeSelected

	^(self searchValueAt: 'scope' ifAbsent: [^true]) = ('User' translateFor: self session user)