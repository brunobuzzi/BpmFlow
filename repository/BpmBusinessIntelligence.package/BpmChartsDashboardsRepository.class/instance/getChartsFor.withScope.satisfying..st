charts
getChartsFor: aBpmUser withScope: aBpmChartScopeClass satisfying: aBlock

	^(self getChartsFor: aBpmUser) select: [:each | (each hasScopeClass: aBpmChartScopeClass) and: [aBlock value: each]]