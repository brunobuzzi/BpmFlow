other
renderItemComponentOn: html

	selectedLateralItem ifNil: [^self].

	html div with: [
		selectedLateralItem getChartDefinitions do: [:eachChart | 
			html div with: [
				eachChart renderExistingChartOn: html] 
			].
	].