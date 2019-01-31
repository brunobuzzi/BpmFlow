subcomponents
openUsersRadar

	(arena isKindOf: WAOrbeonRadarUserComposite2)
	ifTrue: [^arena].

	^WAOrbeonRadarUserComposite2 parent: self