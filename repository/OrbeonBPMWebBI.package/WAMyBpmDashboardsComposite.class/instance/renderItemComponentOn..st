other
renderItemComponentOn: html

	selectedLateralItem ifNil: [^self].

	html div with: [
		self getCurrentDashboardItems keysAndValuesDo: [:index :dashboardInstance | | chartDefinition |
			chartDefinition := dashboardInstance itemDefinition chartDefinition.
			self renderDownUpIconsOn: html forChart: chartDefinition dashboard: dashboardInstance.
			self renderBackForwardIconsOn: html dashboard: dashboardInstance index: index.
			chartDefinition renderReport: dashboardInstance report on: html.
		].
	].