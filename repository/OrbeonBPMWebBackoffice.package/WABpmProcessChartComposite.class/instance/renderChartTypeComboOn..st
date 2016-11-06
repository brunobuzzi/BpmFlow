render
renderChartTypeComboOn: html
	| chartTypes |

	chartTypes := #('Bar Chart' 'Donut Chart').
	self isCreationDayDistribution ifTrue: [chartTypes := #('Day Calendar')].
	self isFieldValueDistribution ifTrue: [chartTypes := #('Bar Chart' 'Double Bar Chart' 'Donut Chart' 'Double Donut Chart')].
	
	^self renderChartTypeComboOn: html withCharts: chartTypes