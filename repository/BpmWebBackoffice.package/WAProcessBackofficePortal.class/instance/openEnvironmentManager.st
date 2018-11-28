subcomponents
openEnvironmentManager

	(arena isKindOf: WABpmEnvironmentBrowser)
	ifTrue: [^arena].

	^WABpmEnvironmentBrowser parent: self