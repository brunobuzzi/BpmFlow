facilities
registerUsers: userNamesList inExecutionAndEnvironment: aBpmEnvironment
	"The receiver register all user contained in user names list <userNamesList> in Environment <aBpmEnvironment>"

	userNamesList do: [:usrName | 
		self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: usrName).
		aBpmEnvironment registerUser: (self getUserNamed: usrName) ifPresent: [].
	]