other
initialize

	super initialize.

	self setShowToElementNamed: 'search-area'. "the search-are is shown by default"

	self basicCreateChartDefinition.

	multiChartIsEnabled := false.

	multiChartDefinition := BpmMultiChartDefinition newFor: self session user in: self session bpmEnvironment.