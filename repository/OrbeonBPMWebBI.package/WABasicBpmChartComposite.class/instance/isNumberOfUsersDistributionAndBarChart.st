query variables
isNumberOfUsersDistributionAndBarChart

	^((self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Number of Users' translateFor: self session user)) and: [self isBarChart]