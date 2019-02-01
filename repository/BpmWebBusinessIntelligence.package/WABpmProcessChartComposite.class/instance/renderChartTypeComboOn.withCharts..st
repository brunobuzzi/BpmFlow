search area
renderChartTypeComboOn: html withCharts: chartsNames
	| chartTypes |

	chartTypes := chartsNames collect: [:each | each translateIn: self session]. 

	self storeReverseTranslationFor: chartTypes withOriginalNames: chartsNames.

	^self renderGenericActiveComboOn: html withList: chartTypes forVariable: 'chart-type' label: ('Chart Type' translateIn: self session)