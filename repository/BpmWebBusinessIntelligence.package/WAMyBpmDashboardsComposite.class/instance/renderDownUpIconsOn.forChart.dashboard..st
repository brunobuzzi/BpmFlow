other
renderDownUpIconsOn: html forChart: aBpmChartDefinition dashboard: aBpmDashboardInstance

	(selectedLateralItem getChartDefinitions last == aBpmChartDefinition)
	ifFalse:[self renderDownIconOn: html forChart: aBpmChartDefinition].

	(selectedLateralItem getChartDefinitions first == aBpmChartDefinition)
	ifFalse:[self renderUpIconOn: html forChart: aBpmChartDefinition].

	self renderViewDashboardItem: aBpmDashboardInstance on: html.