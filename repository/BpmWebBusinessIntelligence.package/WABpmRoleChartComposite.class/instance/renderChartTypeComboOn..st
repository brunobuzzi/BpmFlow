search area
renderChartTypeComboOn: html
	| chartTypes |

	chartTypes := OrderedCollection withAll: #('Bar Chart' 'Pie Chart').

	self isUsersInTimeDistribution ifTrue: [chartTypes add: 'Heat Map'].	

	^self renderChartTypeComboOn: html withCharts: chartTypes asArray