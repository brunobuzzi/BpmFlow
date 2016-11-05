render
renderChartTypeComboOn: html
	| chartTypes |

	chartTypes := self isCreationDayDistribution ifTrue: [#('Day Calendar')] ifFalse: [#('Bar Chart' 'Donut Chart')].
	
	^self renderChartTypeComboOn: html withCharts: chartTypes