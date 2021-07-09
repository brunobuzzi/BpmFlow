test
testUsersMultiEnvironment
	"In a user muti environment (areUsersMultiEnvironment: true) the same user can be assigned to more than one <BpmEnvironment>"
	| env1 env2 newUser |

	testRoot setUsersAsMultiEnvironment.

	newUser := testRoot getExistingOrNewUserNamed: 'alfred'.
	env1 := testRoot getExistingEnvironmentOrCreateNewNamed: 'env1'.
	self assert: (testRoot includesEnvironmentNamed: env1 name).
	env2 := testRoot getExistingEnvironmentOrCreateNewNamed: 'env2'.
	self assert: (testRoot includesEnvironmentNamed: env2 name).

	env1 registerUser: newUser.
	self assert: (env1 includesUserNamed: newUser username).
	"assigning the same user to the second environment"
	env2 registerUser: newUser.
	self assert: (env2 includesUserNamed: newUser username).

	env1 unregisterUser: newUser.
	self deny: (env1 includesUserNamed: newUser username).

	env2 unregisterUser: newUser.
	self deny: (env2 includesUserNamed: newUser username).

	testRoot unregisterEnvironment: env1.
	self deny: (testRoot includesEnvironmentNamed: env1 name).
	testRoot unregisterEnvironment: env2.
	self deny: (testRoot includesEnvironmentNamed: env2 name).

	testRoot unregisterUser: newUser.
	self assert: (testRoot getUserNamed: newUser username) isNil.