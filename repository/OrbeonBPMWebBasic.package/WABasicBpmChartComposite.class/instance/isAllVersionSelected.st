query variables
isAllVersionSelected

	^(self searchValueAt: 'version' ifAbsent: [^false]) = ('All' translateFor: self session user)