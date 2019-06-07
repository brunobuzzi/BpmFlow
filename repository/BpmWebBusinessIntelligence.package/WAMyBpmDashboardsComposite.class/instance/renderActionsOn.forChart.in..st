chart actions
renderActionsOn: html forChart: aBpmDashboardChartDefinition in: aBpmDashboardInstance

	renderChartOptions ifFalse: [^self].

	html div class: 'float-left'; with: [
		self renderRemoveChartDefinition: aBpmDashboardChartDefinition from: aBpmDashboardInstance on: html.
		self renderEditChartDefinitionOptions: aBpmDashboardChartDefinition from: aBpmDashboardInstance on: html.
	]