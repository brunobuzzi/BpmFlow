test
testUniqueUserNameInMultiEnvironment
	| env1 newUser |

	testRoot setUsersAsMultiEnvironment.

	env1 := testRoot getExistingEnvironmentOrCreateNewNamed: 'env1'.

	newUser := testRoot getExistingOrNewUserNamed: 'alfred'.
	self assert: (newUser canBeAddedTo: env1).
	self assert: (newUser username = 'alfred').
	self deny: (env1 includesUserNamed: newUser username).

	env1 registerUser: newUser ifPresent: [].

	self assert: (env1 includesUserNamed: newUser username).
	env1 unregisterUser: newUser.
	self deny: (env1 includesUserNamed: newUser username).

	testRoot unregisterUser: newUser.
	testRoot unregisterEnvironment: env1.