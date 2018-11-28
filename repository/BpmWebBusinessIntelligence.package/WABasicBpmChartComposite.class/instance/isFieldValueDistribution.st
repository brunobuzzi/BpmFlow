query variables
isFieldValueDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Field Value' translateFor: self session user)