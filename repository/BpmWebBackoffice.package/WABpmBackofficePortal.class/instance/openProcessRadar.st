subcomponents
openProcessRadar

	(arena isKindOf: WABpmProcessRadarComposite)
	ifTrue: [^arena].

	^WABpmProcessRadarComposite parent: self