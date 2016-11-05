other
isDonutChart

	^(self searchValueAt: 'chart-type' ifAbsent: [nil]) = 'Donut Chart'