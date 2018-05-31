render
basicCreateChartDefinition

	chartDefinition := BpmChartDefinition newFor: self session user.

	chartDefinition scope: (self newChartScopeFor: chartDefinition)