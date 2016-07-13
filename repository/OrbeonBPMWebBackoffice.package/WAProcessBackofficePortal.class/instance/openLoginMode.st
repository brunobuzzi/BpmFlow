subcomponents
openLoginMode

	(arena isKindOf: WALoginModeManager)
	ifTrue: [^arena].

	^WALoginModeManager parent: self