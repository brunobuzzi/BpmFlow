search area
renderChartTypeComboOn: html
	| chartTypes |

	chartTypes := OrderedCollection with: BIBarChart getComboName with: BIPieChart getComboName.

	self isUsersInTimeDistribution ifTrue: [chartTypes add: BIHeatmapChart getComboName].	

	^self renderChartTypeComboOn: html withCharts: chartTypes asArray