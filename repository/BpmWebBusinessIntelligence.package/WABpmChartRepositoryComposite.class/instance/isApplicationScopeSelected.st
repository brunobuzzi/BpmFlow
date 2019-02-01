testing
isApplicationScopeSelected

	^(self searchValueAt: 'scope' ifAbsent: [^false]) = ('Application' translateIn: self session)