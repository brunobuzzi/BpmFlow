top menu
openBpmChartsRepository

	(arena isKindOf: WABpmChartRepositoryComposite)
	ifTrue: [^arena].

	^WABpmChartRepositoryComposite parent: self