other
renderItemComponentOn: html

	selectedLateralItem ifNil: [^self].

	html div with: [
		selectedLateralItem getChartDefinitions do: [:eachChart |
			self renderDownUpIconsOn: html forChart: eachChart.
			eachChart renderExistingChartOn: html.
		].
	].