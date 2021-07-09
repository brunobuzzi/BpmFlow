bpm users
newUsername: username password: password 
	"The receiver create a new <BpmUser> named <username> with password <username>"
	| centralUser bpmUser |

	areUsersMultiEnvironment 
	ifFalse: [ImproperBpmOperationException signal: 'In a [user single environment] the user must be created with the environment. Use #newUsername:password:forEnvironment'].

	centralUser := self getExistingOrNewCentralUserNamed: username.
	centralUser password: password.

	bpmUser := BpmUser newAs: centralUser on: self.
	bpmUser centralUser: centralUser.

	self registerUser: bpmUser ifPresent: [].

	^bpmUser