subcomponents
openBpmChartsRepository

	(arena isKindOf: WABpmChartRepositoryComposite)
	ifTrue: [^arena].

	^WABpmChartRepositoryComposite parent: self