query variables
isFinishedTasksDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Finished Tasks by Type' translateFor: self session user)