sub components
showChangePassword

	^(arena class == WABpmUserChangePassword)
	ifTrue: [arena]
	ifFalse: [WABpmUserChangePassword parent: self]