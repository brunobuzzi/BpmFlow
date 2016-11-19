render
renderChartTypeComboOn: html withCharts: chartsNames
	| chartTypes |

	chartTypes := chartsNames collect: [:each | each translateFor: self session user]. 

	^self renderGenericComboOn: html withList: chartTypes forVariable: 'chart-type' label: ('Chart Type' translateFor: self session user)