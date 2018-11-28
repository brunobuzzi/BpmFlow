other
getChartType

	^self searchValueAt: 'chart-type' ifAbsent: [nil]