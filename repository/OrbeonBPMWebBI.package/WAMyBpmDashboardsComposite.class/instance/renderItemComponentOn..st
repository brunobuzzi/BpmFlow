other
renderItemComponentOn: html

	selectedLateralItem ifNil: [^self].

	html div with: [
		self getCurrentDashboardItems do: [:dashboardInstance | | chartDefinition |
			chartDefinition := dashboardInstance itemDefinition chartDefinition.
			self renderDownUpIconsOn: html forChart: chartDefinition dashboard: dashboardInstance.
			chartDefinition renderReport: dashboardInstance report on: html.
		].
	].