query variables
getDistributionName

	^self searchValueAt: 'distribution' ifAbsent: [nil]