query variables
isProcessInstanceDistributionAndBarChart

	^self isProcessInstanceDistribution
		and:[(self searchValueAt: 'chart-type' ifAbsent: [nil]) = 'Bar Chart']