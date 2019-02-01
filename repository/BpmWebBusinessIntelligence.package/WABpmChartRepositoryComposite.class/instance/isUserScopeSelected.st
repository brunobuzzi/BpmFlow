testing
isUserScopeSelected

	^(self searchValueAt: 'scope' ifAbsent: [^true]) = ('User' translateIn: self session)