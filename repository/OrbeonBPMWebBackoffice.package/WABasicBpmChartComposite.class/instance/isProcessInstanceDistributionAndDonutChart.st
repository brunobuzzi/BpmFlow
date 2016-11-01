other
isProcessInstanceDistributionAndDonutChart

	^((self searchValueAt: 'distribution' ifAbsent: [nil]) = 'Process Instances') 
		and:[(self searchValueAt: 'chart-type' ifAbsent: [nil]) = 'Donut Chart']