search area
renderChartTypeComboOn: html
	| chartTypes |

	chartTypes := #('Bar Chart' 'Pie Chart').
	self isCreationDayDistribution ifTrue: [chartTypes := #('Heat Map')].
	self isFieldValueEvolution ifTrue: [chartTypes := #('Spline Area Chart')].
	
	^self renderChartTypeComboOn: html withCharts: chartTypes