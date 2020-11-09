other
renderChartTypeComboOn: html
	| chartTypes |

	chartTypes := Array with: BISplineChart getComboName with: BISplineAreaChart getComboName.

	^self renderChartTypeComboOn: html withCharts: chartTypes