other
renderChartTypeComboOn: html
	| chartTypes |

	chartTypes := #('Bar Chart' 'Pie Chart').
	
	^self renderChartTypeComboOn: html withCharts: chartTypes