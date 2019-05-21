performers
canBeTakenBy: aBpmUser
	"Answer whether or not <aBpmUser> can take the receiver"

	self hasPerformers ifFalse: [^role isGranted: aBpmUser]. "if there is no performers --> is has to be included in the receivers role"

	^(self getNextRoleIfNone: []) isGranted: aBpmUser "there are perfomers --> if the next perfomer role includes <aBpmUser>  --> is granted"