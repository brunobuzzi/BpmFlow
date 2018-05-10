other
renderChartTypeComboOn: html
	| chartTypes |

	chartTypes := #('Bar Chart' 'Donut Chart').
	
	^self renderChartTypeComboOn: html withCharts: chartTypes