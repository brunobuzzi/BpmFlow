testing
isProcessScopeSelected

	^(self searchValueAt: 'scope' ifAbsent: [^false]) = ('Process' translateIn: self session)