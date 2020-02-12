charts
getChartsFor: aBpmUser withScope: aBpmChartScopeClass

	^self getChartsFor: aBpmUser withScope: aBpmChartScopeClass satisfying: [:e | true]