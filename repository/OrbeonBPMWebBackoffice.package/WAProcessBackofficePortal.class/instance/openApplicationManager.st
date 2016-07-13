subcomponents
openApplicationManager

	(arena isKindOf: WABpmApplicationManager)
	ifTrue: [^arena].

	^WABpmApplicationManager parent: self