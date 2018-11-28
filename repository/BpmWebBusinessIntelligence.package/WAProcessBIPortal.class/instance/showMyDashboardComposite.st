top menu
showMyDashboardComposite

	(arena isKindOf: WAMyCurrentDashboardsComposite)
	ifTrue: [^arena].

	^WAMyCurrentDashboardsComposite parent: self