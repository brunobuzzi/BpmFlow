render
basicCreateChartDefinition

	chartDefinition := BpmSingleChartDefinition newFor: self session user in: self session bpmEnvironment.

	chartDefinition scope: (self newChartScopeFor: chartDefinition)