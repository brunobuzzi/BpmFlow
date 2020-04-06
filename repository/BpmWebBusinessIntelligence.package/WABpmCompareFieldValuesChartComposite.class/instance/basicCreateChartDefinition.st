other
basicCreateChartDefinition
 
	chartDefinition := BpmSingleChartDefinition newFor: self session user in: self session bpmEnvironment.

	chartDefinition
		scope: (self newChartScopeFor: chartDefinition);
		distribution: (BpmChartFieldMultiValueDistribution newOn: chartDefinition);
		distributionType: (BpmChartQuantityDistribution newOn: chartDefinition);
		chartType: (BpmSplineChart newOn: chartDefinition).