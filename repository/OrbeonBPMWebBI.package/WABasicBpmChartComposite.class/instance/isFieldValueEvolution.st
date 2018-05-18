query variables
isFieldValueEvolution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Field Evolution' translateFor: self session user)