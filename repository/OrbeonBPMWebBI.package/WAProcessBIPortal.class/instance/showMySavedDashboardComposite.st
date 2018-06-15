top menu
showMySavedDashboardComposite

	(arena isKindOf: WAMyBpmDashboardsComposite)
	ifTrue: [^arena].

	^WAMyBpmDashboardsComposite parent: self