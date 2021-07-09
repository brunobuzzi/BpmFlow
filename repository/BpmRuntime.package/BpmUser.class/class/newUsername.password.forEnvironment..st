user creation
newUsername: username password: password forEnvironment: aBpmEnvironment
	"The receiver create a new <BpmUser> named <username> with password <username> for environment <aBpmEnvironment>"
	| centralUser user uniqueUsername |

	uniqueUsername := self getUniqueUserNameFor: username for: aBpmEnvironment. "(see issue #799)"

	centralUser := self defaultApplicationUserClass getExistingOrNewUserNamed: uniqueUsername.
	centralUser password: password.

	user := self new initialize.
	user centralUser: centralUser.

	user addToCache.

	aBpmEnvironment registerUser: user ifPresent: [].

	^user