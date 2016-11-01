other
renderChartTypeComboOn: html withCharts: chartsNames

	^self renderGenericComboOn: html withList: chartsNames forVariable: 'chart-type' label: 'Chart Type'