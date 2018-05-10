query variables
isProcessesAverageTimeDistributionAndPieChart

	^((self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Processes Average Time' translateFor: self session user)) and: [self isPieChart]