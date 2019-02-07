subcomponents
openUsersRadar

	(arena isKindOf: WABpmUserRadarComposite)
	ifTrue: [^arena].

	^WABpmUserRadarComposite parent: self