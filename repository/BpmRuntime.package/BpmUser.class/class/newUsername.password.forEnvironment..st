user creation
newUsername: username password: password forEnvironment: aBpmEnvironment
	"The receiver create a new <BpmUser> named <username> with password <username> for environment <aBpmEnvironment>"
	| user uniqueUsername |

	uniqueUsername := self getUniqueUserNameFor: username for: aBpmEnvironment. "(see issue #799)"

	user := self newUsername: uniqueUsername password: password.

	aBpmEnvironment registerUser: user ifPresent: [].

	^user