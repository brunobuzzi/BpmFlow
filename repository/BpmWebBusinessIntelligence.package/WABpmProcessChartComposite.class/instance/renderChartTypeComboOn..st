search area
renderChartTypeComboOn: html
	| chartTypes |

	chartTypes := #('Bar Chart' 'Pie Chart').
	(self isCreationDayDistribution or: [self isDateDistribution]) ifTrue: [chartTypes := #('Heat Map')].
	self isFieldValueEvolution ifTrue: [chartTypes := #('Spline Area Chart')].
	self isTasksHeatmapDistribution ifTrue: [chartTypes := #('Tasks Heatmap')].
	
	^self renderChartTypeComboOn: html withCharts: chartTypes