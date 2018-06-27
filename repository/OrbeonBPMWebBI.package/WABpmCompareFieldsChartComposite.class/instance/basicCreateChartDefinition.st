field collection
basicCreateChartDefinition
 
	chartDefinition
		scope: (self newChartScopeFor: chartDefinition);
		distribution: (BpmChartMultipleFieldsScope newOn: chartDefinition);
		distributionType: (BpmChartQuantityDistribution newOn: chartDefinition);
		chartType: (BpmSplineChart newOn: chartDefinition).