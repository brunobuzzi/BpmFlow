subcomponents
openGlobalCharts

	(arena isKindOf: WABpmGlobalChartComposite)
	ifTrue: [^arena].

	^WABpmGlobalChartComposite parent: self