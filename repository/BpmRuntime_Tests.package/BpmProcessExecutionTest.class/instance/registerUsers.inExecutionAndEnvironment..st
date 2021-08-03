facilities
registerUsers: userNamesList inExecutionAndEnvironment: aBpmEnvironment
	"The receiver register all user contained in user names list <userNamesList> in Environment <aBpmEnvironment>"

	userNamesList do: [:usrName | | user |
		user := testRoot getExistingOrNewUserNamed: usrName.
		"self processExecutionSimulator registerUser: (testRoot getExistingOrNewUserNamed: usrName)."
		aBpmEnvironment registerUser: user ifPresent: [].
	]