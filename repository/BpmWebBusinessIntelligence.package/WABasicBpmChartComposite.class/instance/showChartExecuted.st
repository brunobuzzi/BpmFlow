chart variable
showChartExecuted

	^self componentValueAt: 'showChart' ifAbsent: [false]