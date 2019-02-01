testing
isGlobalScopeSelected

	^(self searchValueAt: 'scope' ifAbsent: [^false]) = ('Global' translateIn: self session)