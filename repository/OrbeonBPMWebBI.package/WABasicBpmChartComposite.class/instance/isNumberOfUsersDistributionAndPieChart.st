query variables
isNumberOfUsersDistributionAndPieChart

	^((self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Number of Users' translateFor: self session user)) and: [self isPieChart]