query variables
isUserNumberOfTasksDistributionAndPieChart

	^((self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Number of Tasks' translateFor: self session user)) and: [self isPieChart]