other
basicCreateChartDefinition
 
	chartDefinition := BISingleChartDefinition newFor: self session user in: self session bpmEnvironment.

	chartDefinition
		scope: (self newChartScopeFor: chartDefinition);
		distribution: (BpmChartFieldMultiValueDistribution newOn: chartDefinition);
		distributionType: (BIChartQuantityDistribution newOn: chartDefinition);
		chartType: (BISplineChart newOn: chartDefinition).