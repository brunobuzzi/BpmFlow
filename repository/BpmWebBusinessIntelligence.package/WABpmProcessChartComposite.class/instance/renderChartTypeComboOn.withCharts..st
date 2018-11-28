search area
renderChartTypeComboOn: html withCharts: chartsNames
	| chartTypes |

	chartTypes := chartsNames collect: [:each | each translateFor: self session user]. 

	self storeReverseTranslationFor: chartTypes withOriginalNames: chartsNames.

	^self renderGenericActiveComboOn: html withList: chartTypes forVariable: 'chart-type' label: ('Chart Type' translateFor: self session user)