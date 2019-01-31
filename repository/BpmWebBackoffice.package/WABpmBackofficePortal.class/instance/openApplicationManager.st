subcomponents
openApplicationManager

	(arena isKindOf: WABpmApplicationBrowser)
	ifTrue: [^arena].

	^WABpmApplicationBrowser parent: self