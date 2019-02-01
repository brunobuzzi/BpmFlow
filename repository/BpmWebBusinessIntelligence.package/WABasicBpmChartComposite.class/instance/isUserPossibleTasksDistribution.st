query variables
isUserPossibleTasksDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Possible Tasks' translateIn: self session)