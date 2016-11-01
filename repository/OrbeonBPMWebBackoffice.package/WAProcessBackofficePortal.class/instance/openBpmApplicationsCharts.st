subcomponents
openBpmApplicationsCharts

	(arena isKindOf: WABpmApplicationChartComposite)
	ifTrue: [^arena].

	^WABpmApplicationChartComposite parent: self