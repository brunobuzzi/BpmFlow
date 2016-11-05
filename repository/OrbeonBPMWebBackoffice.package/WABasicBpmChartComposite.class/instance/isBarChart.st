other
isBarChart

	^(self searchValueAt: 'chart-type' ifAbsent: [nil]) = 'Bar Chart'