top menu
showMyDashboardComposite

	(arena isKindOf: WABpmProcessChartComposite)
	ifTrue: [^arena].

	^WABpmProcessChartComposite parent: self