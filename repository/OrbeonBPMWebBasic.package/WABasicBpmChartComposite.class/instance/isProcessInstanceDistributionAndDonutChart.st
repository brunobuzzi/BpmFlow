query variables
isProcessInstanceDistributionAndDonutChart

	^self isProcessInstanceDistribution
		and:[(self searchValueAt: 'chart-type' ifAbsent: [nil]) = 'Donut Chart']