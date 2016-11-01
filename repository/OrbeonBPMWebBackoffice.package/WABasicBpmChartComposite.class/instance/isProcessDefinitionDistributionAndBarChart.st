other
isProcessDefinitionDistributionAndBarChart

	^((self searchValueAt: 'distribution' ifAbsent: [nil]) = 'Process Definition') 
		and:[(self searchValueAt: 'chart-type' ifAbsent: [nil]) = 'Bar Chart']