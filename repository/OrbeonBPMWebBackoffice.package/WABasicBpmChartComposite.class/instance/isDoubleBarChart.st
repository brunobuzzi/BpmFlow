other
isDoubleBarChart

	^(self searchValueAt: 'chart-type' ifAbsent: [nil]) = 'Double Bar Chart'