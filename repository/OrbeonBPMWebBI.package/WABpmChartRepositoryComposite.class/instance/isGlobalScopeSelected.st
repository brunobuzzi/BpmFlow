testing
isGlobalScopeSelected

	^(self searchValueAt: 'scope' ifAbsent: [^false]) = ('Global' translateFor: self session user)