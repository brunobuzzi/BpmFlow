query variables
getDateGroup

	^(self searchValueAt: 'date-groups' ifAbsent: [^''])