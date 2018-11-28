query variables
isUserPossibleTasksDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Possible Tasks' translateFor: self session user)