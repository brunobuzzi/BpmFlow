subcomponents
openFormManager

	(arena isKindOf: WAOrbeonFormsManager)
	ifTrue: [^arena].

	^WAOrbeonFormsManager parent: self