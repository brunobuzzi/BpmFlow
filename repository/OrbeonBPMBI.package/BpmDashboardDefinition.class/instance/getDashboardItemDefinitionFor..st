other
getDashboardItemDefinitionFor: aBpmChartDefinition

	^items detect: [:each | each chartDefinition == aBpmChartDefinition] ifNone: [nil]