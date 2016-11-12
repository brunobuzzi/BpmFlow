query variables
isBarChart

	^(self searchValueAt: 'chart-type' ifAbsent: [nil]) = ('Bar Chart' translateFor: self session user)