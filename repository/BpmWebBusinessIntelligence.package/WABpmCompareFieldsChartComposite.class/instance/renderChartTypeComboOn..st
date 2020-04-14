search area
renderChartTypeComboOn: html
	| chartTypes |

	chartTypes := Array with: BISplineChart getComboName with: BISplineAreaChart getComboName.

	^self renderGenericComboOn: html withList: chartTypes forVariable: 'chart-type' label: ('Chart Type' translateIn: self session)