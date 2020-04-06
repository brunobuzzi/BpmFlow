top menu
openCompareFieldValuesCharts

	(arena isKindOf: WABpmCompareFieldValuesChartComposite)
	ifTrue: [^arena].

	^WABpmCompareFieldValuesChartComposite parent: self