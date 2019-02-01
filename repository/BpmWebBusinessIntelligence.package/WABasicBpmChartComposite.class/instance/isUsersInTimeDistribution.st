query variables
isUsersInTimeDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Users in Time' translateIn: self session)