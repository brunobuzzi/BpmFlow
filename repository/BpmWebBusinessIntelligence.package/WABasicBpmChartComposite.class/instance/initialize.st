other
initialize

	super initialize.

	self basicCreateChartDefinition.

	multiChartIsEnabled := false.

	multiChartDefinition := BIMultiChartDefinition newFor: self session user in: self session bpmEnvironment.