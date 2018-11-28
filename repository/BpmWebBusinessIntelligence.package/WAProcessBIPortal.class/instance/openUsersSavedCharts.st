top menu
openUsersSavedCharts

	(arena isKindOf: WAUsersChartsRepositoryComposite)
	ifTrue: [^arena].

	^WAUsersChartsRepositoryComposite parent: self