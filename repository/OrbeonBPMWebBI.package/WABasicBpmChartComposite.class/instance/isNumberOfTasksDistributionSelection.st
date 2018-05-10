query variables
isNumberOfTasksDistributionSelection

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Number of Tasks' translateFor: self session user)