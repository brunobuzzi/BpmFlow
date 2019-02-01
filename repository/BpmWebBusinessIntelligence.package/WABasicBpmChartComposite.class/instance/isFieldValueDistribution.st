query variables
isFieldValueDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Field Value' translateIn: self session)