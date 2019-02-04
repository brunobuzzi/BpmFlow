user creation
newUsername: username password: password 
	"The receiver create a new <BpmUser> named <username> with password <username>"
	| user centralUser |

	self defaultEnvironmentClass areUsersMultiEnvironment 
	ifFalse: [ImproperBpmOperationException signal: 'In a [user single environment] the user must be created with the environment. Use>> newUsername:password:forEnvironment'].

	centralUser := ApplicationUser getExistingOrNewUserNamed: username.
	centralUser password: password.

	user := self new initialize.
	user centralUser: centralUser.

	user addToCache.

	^user