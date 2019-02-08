other
canBeAddedTo: aBpmEnvironment
	"Answer whether or not the receiver can be added to <aBpmEnvironment>"

	^(self defaultEnvironmentClass areUsersMultiEnvironment or: [aBpmEnvironment isAdminsEnvironment])
		or: [((bpmEnvironments size = 0) or: [self isInAdminsEnvironment]) and: [(self username indexOfSubCollection: '@', aBpmEnvironment name) ~= 0]]

"Rules: 1) or 2) must be true so the user can be added to <aBpmEnvironment>
1) 
	1.1) If the system is setup as user multi environment --> <true>
	1.2) If <aBpmEnvironment> is the 'admins' environment (anyone can be added to 'admins' environment) --> <true>

(at this point 1.1) and 1.2) are false: the system is user single environment and <aBpmEnvironment> is a regular environment

2) 
	2.1) User has 0 environment or:  User is in 'admins' environment
	2.2) The username must include the name of the environment
"