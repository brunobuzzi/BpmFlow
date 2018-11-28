subcomponents
openChangePassword

	(arena isKindOf: WAChangeUserPasswordComposite)
	ifTrue: [^arena].

	^WAChangeUserPasswordComposite parent: self