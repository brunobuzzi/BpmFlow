query variables
isUnassignedTasksDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Unassigned Tasks' translateFor: self session user)