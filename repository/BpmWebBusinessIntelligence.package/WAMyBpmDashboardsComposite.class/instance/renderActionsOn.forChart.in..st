chart actions
renderActionsOn: html forChart: aBpmDashboardChartDefinition in: aBpmDashboardInstance

	self renderRemoveChartDefinition: aBpmDashboardChartDefinition from: aBpmDashboardInstance on: html.
	self renderEditChartDefinitionOptions: aBpmDashboardChartDefinition from: aBpmDashboardInstance on: html.