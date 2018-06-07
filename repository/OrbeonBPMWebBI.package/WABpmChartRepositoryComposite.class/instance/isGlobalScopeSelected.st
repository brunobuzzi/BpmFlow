other
isGlobalScopeSelected

	^(self searchValueAt: 'scope' ifAbsent: [^true]) = ('Global' translateFor: self session user)