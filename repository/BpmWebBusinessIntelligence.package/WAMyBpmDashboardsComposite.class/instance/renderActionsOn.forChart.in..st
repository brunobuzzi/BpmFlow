chart actions
renderActionsOn: html forChart: aBpmDashboardChartDefinition in: aBpmDashboardInstance

	html div class: 'float-left'; with: [
		self renderRemoveChartDefinition: aBpmDashboardChartDefinition from: aBpmDashboardInstance on: html.
		self renderEditChartDefinitionOptions: aBpmDashboardChartDefinition from: aBpmDashboardInstance on: html.
	].

	html div class: 'float-right'; with: [
		html output: aBpmDashboardChartDefinition startDate printString, ' -> ', aBpmDashboardChartDefinition endDate printString.
	]