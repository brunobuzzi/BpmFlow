other
isProcessScopeSelected

	^(self searchValueAt: 'scope' ifAbsent: [^true]) = ('Process' translateFor: self session user)