other
testUsersMultiEnvironment
	"In a user muti environment (areUsersMultiEnvironment: true) the same user can be assigned to more than one <BpmEnvironment>"
	| env1 env2 newUser currentMode |

	currentMode := self defaultEnvironmentClass areUsersMultiEnvironment.
	self defaultEnvironmentClass areUsersMultiEnvironment: true.

	newUser := self defaultBpmUserClass getExistingOrNewUserNamed: 'alfred'.
	env1 := (self defaultEnvironmentClass newNamed: 'env1') addToCache.
	self assert: (self defaultEnvironmentClass includesEnvironmentNamed: env1 name).
	env2 := (self defaultEnvironmentClass newNamed: 'env2') addToCache.
	self assert: (self defaultEnvironmentClass includesEnvironmentNamed: env2 name).

	env1 registerUser: newUser.
	self assert: (env1 includesUserNamed: newUser username).
	"assigning the same user to the second environment"
	env2 registerUser: newUser.
	self assert: (env2 includesUserNamed: newUser username).

	env1 unregisterUser: newUser.
	self deny: (env1 includesUserNamed: newUser username).

	env2 unregisterUser: newUser.
	self deny: (env2 includesUserNamed: newUser username).

	env1 removeFromCache.
	self deny: (self defaultEnvironmentClass includesEnvironmentNamed: env1 name).
	env2 removeFromCache.
	self deny: (self defaultEnvironmentClass includesEnvironmentNamed: env2 name).

	newUser removeFromCache.
	self assert: (self defaultBpmUserClass getUserNamed: newUser username) isNil.

	self defaultEnvironmentClass areUsersMultiEnvironment: currentMode.