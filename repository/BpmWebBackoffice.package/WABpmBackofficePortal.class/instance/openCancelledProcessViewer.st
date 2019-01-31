subcomponents
openCancelledProcessViewer

	(arena isKindOf: WACancelledProcessBrowser)
	ifTrue: [^arena].

	^WACancelledProcessBrowser parent: self