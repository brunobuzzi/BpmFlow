test
testUniqueUserNameInSingleEnvironment
	| env1 newUser |

	testRoot setUsersAsMonoEnvironment.

	env1 := testRoot getExistingEnvironmentOrCreateNewNamed:'env1'.

	[newUser := testRoot getExistingOrNewUserNamed: 'alfred'] on: ImproperBpmOperationException do: [:ex | self assert: newUser isNil].

	newUser := testRoot getExistingOrNewUserNamed: 'alfred2' password: ' ' forEnvironment: env1.
	self assert: (newUser username = 'alfred2@env1').
	self assert: (env1 includesUserNamed: newUser username).

	env1 unregisterUser: newUser.
	self deny: (env1 includesUserNamed: newUser username).

	testRoot unregisterUser: newUser.
	testRoot unregisterEnvironment: env1.