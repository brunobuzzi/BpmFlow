query variables
isDoubleDonutChart

	^(self searchValueAt: 'chart-type' ifAbsent: [nil]) = ('Double Donut Chart' translateFor: self session user)