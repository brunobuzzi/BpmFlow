other
renderDownUpIconsOn: html forChart: aBpmChartDefinition

	(selectedLateralItem getChartDefinitions last == aBpmChartDefinition)
	ifFalse:[self renderDownIconOn: html forChart: aBpmChartDefinition].

	(selectedLateralItem getChartDefinitions first == aBpmChartDefinition)
	ifFalse:[self renderUpIconOn: html forChart: aBpmChartDefinition].