other
getApplicationName

	^self searchValueAt: 'application' ifAbsent: [nil]