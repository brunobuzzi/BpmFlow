subcomponents
openChangePassword

	(arena isKindOf: WABkBpmUserChangePassword)
	ifTrue: [^arena].

	^WABkBpmUserChangePassword parent: self