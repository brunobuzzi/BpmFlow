subclass responsibility
renderItemComponentOn: html

	selectedLateralItem ifNil: [^self].

	html div id: 'bpm-report-graph';
		with: [selectedLateralItem renderExistingChartOn: html].

	selectedLateralItem ifNotNil: [
		((selectedLateralItem class canUnderstand: #hasSecondaryDistritbution) or: [selectedLateralItem isMultiFieldDistribution]) 
		ifFalse: [^self].
		(selectedLateralItem hasSecondaryDistritbution or: [selectedLateralItem isMultiFieldDistribution])
		ifTrue: [self renderDateGroupsOptionsOn: html]].