search area
renderChartTypeComboOn: html
	| chartTypes |

	chartTypes := Array with: BpmSplineChart getComboName with: BpmSplineAreaChart getComboName.

	^self renderGenericComboOn: html withList: chartTypes forVariable: 'chart-type' label: ('Chart Type' translateIn: self session)