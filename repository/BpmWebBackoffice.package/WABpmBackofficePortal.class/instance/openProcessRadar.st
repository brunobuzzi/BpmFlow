subcomponents
openProcessRadar

	(arena isKindOf: WAOrbeonRadarProcessComposite2)
	ifTrue: [^arena].

	^WAOrbeonRadarProcessComposite2 parent: self