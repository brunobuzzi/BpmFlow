query variables
getApplicationName

	^self searchValueAt: 'application' ifAbsent: [nil]