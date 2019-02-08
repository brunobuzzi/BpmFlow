other
canBeAddedTo: aBpmEnvironment
	"Answer whether or not the receiver can be added to <aBpmEnvironment>.
	On user multi environment --> always is <true>"

	^(self defaultEnvironmentClass areUsersMultiEnvironment or: [aBpmEnvironment isAdminsEnvironment])
		or: [(self isInAdminsEnvironment or: [bpmEnvironments size = 0]) and: [(self username indexOfSubCollection: '@', aBpmEnvironment name) = 0]]