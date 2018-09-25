other
renderItemComponentOn: html

	selectedLateralItem ifNil: [^self].

	html div with: [
		selectedLateralItem getLastDashboardInstances do: [:dashboardInstance | | chartDefinition |
			chartDefinition := dashboardInstance itemDefinition chartDefinition.
			self renderDownUpIconsOn: html forChart: chartDefinition.
			chartDefinition renderReport: dashboardInstance report on: html.
		].
	].