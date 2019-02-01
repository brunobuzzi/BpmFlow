query variables
isCreationDayDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Creation Day' translateIn: self session)