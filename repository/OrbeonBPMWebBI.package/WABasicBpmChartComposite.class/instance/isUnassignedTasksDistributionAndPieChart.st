query variables
isUnassignedTasksDistributionAndPieChart

	^((self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Unassigned Tasks' translateFor: self session user)) and: [self isPieChart]