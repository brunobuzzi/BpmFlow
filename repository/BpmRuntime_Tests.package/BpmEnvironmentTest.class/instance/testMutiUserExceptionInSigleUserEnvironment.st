test
testMutiUserExceptionInSigleUserEnvironment
	"In a user single environment (areUsersMultiEnvironment: false) the same user can NOT be assigned to more than one <BpmEnvironment>.
	With the exception of 'admins' <BpmEnvironment>.
	So the rule is: a user can be assigned to 'admins' <BpmEnvironment> and other <BpmEnvironment>. A max of two if one of them is 'admins' "
	| env1 env2 newUser |

	testRoot setUsersAsMonoEnvironment.
	
	env1 := testRoot getExistingEnvironmentOrCreateNewNamed:  'env1'.
	newUser := self defaultBpmUserClass getExistingOrNewUserNamed: 'alfred' password: ' ' forEnvironment: env1.

	self assert: (testRoot includesEnvironmentNamed: env1 name).
	env2 := testRoot getExistingEnvironmentOrCreateNewNamed: 'env2'.
	self assert: (testRoot includesEnvironmentNamed: env2 name).
	self assert: (env1 includesUserNamed: newUser username).

	self deny: (newUser canBeAddedTo: env2).
	[env2 registerUser: newUser] on: ImproperBpmOperationException do: [:ex | self assert: true].
	self deny: (env2 includesUserNamed: newUser username).

	"this is the exception - on a user single environment <newUser> is registed in the second environment 'admins' "
	"  'admis' is a special environment "
	testRoot getAdminsEnvironment registerUser: newUser.
	self assert: (testRoot getAdminsEnvironment includesUserNamed: newUser username).

	testRoot getAdminsEnvironment unregisterUser: newUser.
	self deny: (testRoot getAdminsEnvironment includesUserNamed: newUser username).

	env1 unregisterUser: newUser.
	self deny: (env1 includesUserNamed: newUser username).

	env1 removeFromCache.
	self deny: (testRoot includesEnvironmentNamed: env1 name).
	env2 removeFromCache.
	self deny: (testRoot includesEnvironmentNamed: env2 name).

	testRoot setUsersAsMultiEnvironment.

	newUser removeFromCache.
	self assert: (self defaultBpmUserClass getUserNamed: newUser username) isNil.