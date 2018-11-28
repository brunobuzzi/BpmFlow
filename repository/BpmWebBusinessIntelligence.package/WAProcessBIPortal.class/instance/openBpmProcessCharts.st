top menu
openBpmProcessCharts

	(arena isKindOf: WABpmProcessChartComposite)
	ifTrue: [^arena].

	^WABpmProcessChartComposite parent: self