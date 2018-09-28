testing
isApplicationScopeSelected

	^(self searchValueAt: 'scope' ifAbsent: [^false]) = ('Application' translateFor: self session user)