query variables
isDonutChart

	^(self searchValueAt: 'chart-type' ifAbsent: [nil]) = ('Donut Chart' translateFor: self session user)