query variables
isTasksAverageTimeDistributionAndPieChart

	^((self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Tasks Average Time' translateFor: self session user)) and: [self isPieChart]