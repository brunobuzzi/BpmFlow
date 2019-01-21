other
testUsersSingleEnvironment
	| env1 env2 newUser currentMode |

	currentMode := self defaultEnvironmentClass areUsersMultiEnvironment.
	self defaultEnvironmentClass areUsersMultiEnvironment: false.

	newUser := BpmUser getExistingOrNewUserNamed: 'alfred'.
	env1 := (BpmEnvironment newNamed: 'env1') addToCache.
	self assert: (self defaultEnvironmentClass includesEnvironmentNamed: env1 name).
	env2 := (BpmEnvironment newNamed: 'env2') addToCache.
	self assert: (self defaultEnvironmentClass includesEnvironmentNamed: env2 name).

	env1 registerUser: newUser.
	self assert: (env1 includesUserNamed: newUser username).

	[env2 registerUser: newUser] on: ImproperBpmOperationException do: [:ex | self assert: true].
	self deny: (env2 includesUserNamed: newUser username).

	env1 unregisterUser: newUser.
	self deny: (env1 includesUserNamed: newUser username).

	env1 removeFromCache.
	self deny: (self defaultEnvironmentClass includesEnvironmentNamed: env1 name).
	env2 removeFromCache.
	self deny: (self defaultEnvironmentClass includesEnvironmentNamed: env2 name).

	self defaultEnvironmentClass areUsersMultiEnvironment: currentMode.

	newUser removeFromCache.
	self assert: (BpmUser getUserNamed: newUser username) isNil.

	self defaultEnvironmentClass areUsersMultiEnvironment: currentMode.