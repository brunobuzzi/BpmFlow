users
removeUser: aBpmUser

	^self removeUser: aBpmUser ifAbsent: [NoUserException signal:  'The user group [', name ,'] does not have the user [', aBpmUser username, ']' ]