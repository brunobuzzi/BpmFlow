subclass responsibility
renderItemComponentOn: html

	selectedLateralItem ifNil: [^self].

	html div id: 'bpm-report-graph';
		with: [selectedLateralItem renderExistingChartOn: html].

	selectedLateralItem ifNotNil: [
		(selectedLateralItem class canUnderstand: #hasSecondaryDistritbution) ifFalse: [^self].
		selectedLateralItem hasSecondaryDistritbution ifTrue: [self renderDateGroupsOptionsOn: html]].