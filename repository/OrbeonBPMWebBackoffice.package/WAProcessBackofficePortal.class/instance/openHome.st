subcomponents
openHome

	(arena isKindOf: SEWAFHomePanel)
	ifTrue: [^arena].

	^SEWAFHomePanel new