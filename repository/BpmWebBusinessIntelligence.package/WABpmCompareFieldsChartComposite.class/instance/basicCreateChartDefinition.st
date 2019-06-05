field collection
basicCreateChartDefinition
 
	chartDefinition := BpmSingleChartDefinition newFor: self session user in: self session bpmEnvironment.

	chartDefinition
		scope: (self newChartScopeFor: chartDefinition);
		distribution: (BpmChartMultiFieldValueDistribution newOn: chartDefinition);
		distributionType: (BpmChartQuantityDistribution newOn: chartDefinition);
		chartType: (BpmSplineChart newOn: chartDefinition).