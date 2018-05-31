query variables
isUsersInTimeDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Users in Time' translateFor: self session user)