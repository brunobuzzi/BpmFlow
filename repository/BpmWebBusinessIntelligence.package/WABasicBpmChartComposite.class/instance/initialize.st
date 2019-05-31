other
initialize

	super initialize.

	self basicCreateChartDefinition.

	multiChartIsEnabled := false.

	multiChartDefinition := BpmMultiChartDefinition newFor: self session user in: self session bpmEnvironment.