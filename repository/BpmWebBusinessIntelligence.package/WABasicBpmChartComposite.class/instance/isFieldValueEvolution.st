query variables
isFieldValueEvolution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Field Evolution' translateIn: self session)