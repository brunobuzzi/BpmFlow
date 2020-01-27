users
unregisterUser: aBpmUser

	^self unregisterUser: aBpmUser ifAbsent: [NoUserException signal:  'The user group [', name ,'] does not have the user [', aBpmUser username, ']' ]