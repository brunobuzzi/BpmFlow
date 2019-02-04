user creation
newUsername: username password: password 
	"The receiver create a new <BpmUser> named <username> with password <username>"
	| user centralUser |

	centralUser := ApplicationUser getExistingOrNewUserNamed: username.
	centralUser password: password.

	user := self new initialize.
	user centralUser: centralUser.

	user addToCache.

	^user