render
basicCreateChartDefinition

	chartDefinition := BpmChartDefinition newFor: self session user in: self session bpmEnvironment.

	chartDefinition scope: (self newChartScopeFor: chartDefinition)