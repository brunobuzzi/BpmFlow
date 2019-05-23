facilities
registerUsers: userNamesList inExecutionAndEnvironment: aBpmEnvironment

	userNamesList do: [:usrName | 
		self processExecutionSimulator registerUser: (self defaultBpmUserClass getExistingOrNewUserNamed: usrName).
		aBpmEnvironment registerUser: (self getUserNamed: usrName) ifPresent: [].
	]