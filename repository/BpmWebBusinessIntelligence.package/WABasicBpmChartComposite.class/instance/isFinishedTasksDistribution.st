query variables
isFinishedTasksDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Finished Tasks by Type' translateIn: self session)