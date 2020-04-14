field collection
basicCreateChartDefinition
 
	chartDefinition := BISingleChartDefinition newFor: self session user in: self session bpmEnvironment.

	chartDefinition
		scope: (self newChartScopeFor: chartDefinition);
		distribution: (BpmChartMultiFieldValueDistribution newOn: chartDefinition);
		distributionType: (BIChartQuantityDistribution newOn: chartDefinition);
		chartType: (BISplineChart newOn: chartDefinition).