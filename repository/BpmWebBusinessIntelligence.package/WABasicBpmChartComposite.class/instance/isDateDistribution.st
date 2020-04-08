query variables
isDateDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Date Distribution' translateIn: self session)