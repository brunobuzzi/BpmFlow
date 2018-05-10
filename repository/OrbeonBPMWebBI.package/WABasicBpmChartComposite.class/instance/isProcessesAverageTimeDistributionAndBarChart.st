query variables
isProcessesAverageTimeDistributionAndBarChart

	^((self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Processes Average Time' translateFor: self session user)) and: [self isBarChart]