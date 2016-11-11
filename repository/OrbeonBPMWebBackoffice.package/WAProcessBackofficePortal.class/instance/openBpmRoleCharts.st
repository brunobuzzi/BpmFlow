subcomponents
openBpmRoleCharts

	(arena isKindOf: WABpmRoleChartComposite)
	ifTrue: [^arena].

	^WABpmRoleChartComposite parent: self