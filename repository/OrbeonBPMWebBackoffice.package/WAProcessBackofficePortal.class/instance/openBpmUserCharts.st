subcomponents
openBpmUserCharts

	(arena isKindOf: WABpmUserChartComposite)
	ifTrue: [^arena].

	^WABpmUserChartComposite parent: self