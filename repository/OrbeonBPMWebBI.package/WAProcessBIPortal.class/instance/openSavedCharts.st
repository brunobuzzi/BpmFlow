top menu
openSavedCharts

	(arena isKindOf: WABpmChartRepositoryComposite)
	ifTrue: [^arena].

	^WABpmChartRepositoryComposite parent: self