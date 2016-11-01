other
isAllVersionSelected

	^(self searchValueAt: 'version' ifAbsent: [false]) = 'All'