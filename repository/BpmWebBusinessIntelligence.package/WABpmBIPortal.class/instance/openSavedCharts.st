top menu
openSavedCharts

	(arena isKindOf: WAMyChartsRepositoryComposite)
	ifTrue: [^arena].

	^WAMyChartsRepositoryComposite parent: self