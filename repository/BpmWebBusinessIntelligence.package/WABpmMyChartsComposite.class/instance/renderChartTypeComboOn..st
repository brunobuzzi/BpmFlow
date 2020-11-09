search area
renderChartTypeComboOn: html
	| chartTypes |

	chartTypes := Array with: BIBarChart getComboName with: BIPieChart getComboName.

	^self renderChartTypeComboOn: html withCharts: chartTypes