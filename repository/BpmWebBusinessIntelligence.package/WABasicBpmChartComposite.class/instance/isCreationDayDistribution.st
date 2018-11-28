query variables
isCreationDayDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Creation Day' translateFor: self session user)