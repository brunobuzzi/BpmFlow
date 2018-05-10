query variables
isFieldValueDistributionAndBarChart

	^((self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Field Value' translateFor: self session user)) and: [self isBarChart]