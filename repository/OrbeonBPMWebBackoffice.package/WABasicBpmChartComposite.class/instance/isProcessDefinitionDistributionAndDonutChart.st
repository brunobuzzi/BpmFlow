other
isProcessDefinitionDistributionAndDonutChart

	^((self searchValueAt: 'distribution' ifAbsent: [nil]) = 'Process Definition') 
		and:[(self searchValueAt: 'chart-type' ifAbsent: [nil]) = 'Donut Chart']