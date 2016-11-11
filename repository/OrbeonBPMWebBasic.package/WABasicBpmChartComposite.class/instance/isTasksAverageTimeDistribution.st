query variables
isTasksAverageTimeDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = 'Tasks Average Time'