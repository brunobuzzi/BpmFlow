subclass responsibility
renderItemComponentOn: html

	selectedLateralItem ifNil: [^self].

	html div id: 'bpm-report-graph';
		with: [selectedLateralItem renderExistingChartOn: html].