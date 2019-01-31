top menu
showMyOldDashboardsComposite

	(arena isKindOf: WAMyOldDashboardsComposite)
	ifTrue: [^arena].

	^WAMyOldDashboardsComposite parent: self