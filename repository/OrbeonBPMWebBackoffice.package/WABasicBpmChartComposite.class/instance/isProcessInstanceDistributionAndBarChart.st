other
isProcessInstanceDistributionAndBarChart

	^((self searchValueAt: 'distribution' ifAbsent: [nil]) = 'Process Instances') 
		and:[(self searchValueAt: 'chart-type' ifAbsent: [nil]) = 'Bar Chart']