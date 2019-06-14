top menu
showMyHistoricalDashboardsComposite

	(arena isKindOf: WAMyHistoricalDashboardsComposite)
	ifTrue: [^arena].

	^WAMyHistoricalDashboardsComposite parent: self