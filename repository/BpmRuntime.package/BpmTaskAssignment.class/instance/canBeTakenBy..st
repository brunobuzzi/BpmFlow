task handling
canBeTakenBy: aBpmUser
	"Answer whether or not <aBpmUser> can take the receiver"

	(self isAvailableFor: aBpmUser) ifFalse: [^false]. "check execution contexts"

	self hasPerformers ifFalse: [^aBpmUser includesAnyRoleOf: (Array with: role) in: process bpmEnvironment]. "if there is no performers --> the <BpmUser> is has to be included in the receiver role"

	^(self getNextRoleIfNone: []) isGranted: aBpmUser "there are perfomers --> if the next perfomer role includes <aBpmUser>  --> is granted"