sub components
showChangePassword

	^(arena class == WAChangeUserPasswordComposite)
	ifTrue: [arena]
	ifFalse: [WAChangeUserPasswordComposite parent: self]