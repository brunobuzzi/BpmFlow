render
basicCreateChartDefinition

	chartDefinition := BISingleChartDefinition newFor: self session user in: self session bpmEnvironment.

	chartDefinition scope: (self newChartScopeFor: chartDefinition)