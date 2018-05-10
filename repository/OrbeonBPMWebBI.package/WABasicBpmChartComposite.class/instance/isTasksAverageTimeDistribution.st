query variables
isTasksAverageTimeDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Tasks Average Time' translateFor: self session user)