bpm users
newUsername: username password: password forEnvironment: aBpmEnvironment
	"The receiver create a new <BpmUser> named <username> with password <username> for environment <aBpmEnvironment>"
	| centralUser bpmUser uniqueUsername |

	uniqueUsername := self getUniqueUserNameFor: username for: aBpmEnvironment. "(see issue #799)"

	centralUser := self getExistingOrNewCentralUserNamed: uniqueUsername.
	centralUser password: password.

	bpmUser := BpmUser newAs: centralUser on: self.
	bpmUser centralUser: centralUser.

	self registerUser: bpmUser ifPresent: [].

	aBpmEnvironment registerUser: bpmUser ifPresent: [].

	^bpmUser