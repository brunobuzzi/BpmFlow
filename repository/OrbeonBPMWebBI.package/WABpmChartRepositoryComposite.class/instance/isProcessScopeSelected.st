other
isProcessScopeSelected

	^(self searchValueAt: 'scope' ifAbsent: [^false]) = ('Process' translateFor: self session user)