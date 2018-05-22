search area
renderChartTypeComboOn: html
	| chartTypes |

	chartTypes := #('Bar Chart' 'Pie Chart').
	self isCreationDayDistribution ifTrue: [chartTypes := #('Day Calendar')].
	self isFieldValueDistribution ifTrue: [chartTypes := #('Bar Chart' 'Double Bar Chart' 'Pie Chart' 'Double Donut Chart')].
	
	^self renderChartTypeComboOn: html withCharts: chartTypes