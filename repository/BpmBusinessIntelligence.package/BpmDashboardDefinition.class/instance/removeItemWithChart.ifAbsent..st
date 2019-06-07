other
removeItemWithChart: aBpmChartDefinition ifAbsent: aBlock

	^self removeItem: (items detect: [:each | each chartDefinition == aBpmChartDefinition] ifNone: [^aBlock value])