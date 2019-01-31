top menu
showNewDashboardComposite

	(arena isKindOf: WANewBpmDashboardComposite)
	ifTrue: [^arena].

	^WANewBpmDashboardComposite parent: self