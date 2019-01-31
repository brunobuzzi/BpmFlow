top menu
openCompareFieldsCharts

	(arena isKindOf: WABpmCompareFieldsChartComposite)
	ifTrue: [^arena].

	^WABpmCompareFieldsChartComposite parent: self