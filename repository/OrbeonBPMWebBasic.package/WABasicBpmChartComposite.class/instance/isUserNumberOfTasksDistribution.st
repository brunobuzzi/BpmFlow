query variables
isUserNumberOfTasksDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = 'Number of Tasks'