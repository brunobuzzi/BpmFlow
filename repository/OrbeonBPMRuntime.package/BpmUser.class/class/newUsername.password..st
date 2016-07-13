other
newUsername: username password: password 
	| user centralUser |

	centralUser := ApplicationUser getExistingOrNewUserNamed: username.
	centralUser password: password.

	user := self new initialize.
	user centralUser: centralUser.

	user addToCache.

	^user