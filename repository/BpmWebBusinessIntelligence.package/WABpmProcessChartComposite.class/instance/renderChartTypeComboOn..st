search area
renderChartTypeComboOn: html
	| chartTypes |

	chartTypes := Array with: BIBarChart getComboName with: BIPieChart getComboName.
	(self isCreationDayDistribution or: [self isDateDistribution]) ifTrue: [chartTypes := Array with: BIHeatmapChart getComboName].
	self isFieldValueEvolution ifTrue: [chartTypes := Array with: BISplineAreaChart getComboName].
	self isTasksHeatmapDistribution ifTrue: [chartTypes := Array with: BpmTasksHeatmapChart getComboName].
	
	^self renderChartTypeComboOn: html withCharts: chartTypes