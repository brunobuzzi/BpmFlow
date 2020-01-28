performers
isGranted: aBpmUser
	"Answer whether or not <aBpmUser> is granted in the receiver"

	self hasPerformers ifFalse: [^aBpmUser includesAnyRoleOf: (Array with: role) in: process bpmEnvironment]. "if there is no performers --> is has to be included in the receivers role"


	^task getPerformersAsRoles anySatisfy: [:eachRole | eachRole isGranted: aBpmUser] "there are perfomers --> if any perfomer role includes <aBpmUser>  --> is granted (to read at least)"

	"see #canBeTakenBy:"