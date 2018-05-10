other
getVersion

	^self searchValueAt: 'version' ifAbsent: [nil]