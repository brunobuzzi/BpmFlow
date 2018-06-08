other
isApplicationScopeSelected

	^(self searchValueAt: 'scope' ifAbsent: [^true]) = ('Application' translateFor: self session user)