other
renderItemComponentOn: html

	selectedLateralItem ifNil: [^self].

	html div with: [
		selectedLateralItem getChartDefinitions do: [:eachChart |
			eachChart renderExistingChartOn: html.
		].
	].