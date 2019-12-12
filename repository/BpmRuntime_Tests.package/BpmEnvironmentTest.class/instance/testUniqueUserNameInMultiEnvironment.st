test
testUniqueUserNameInMultiEnvironment
	| currentMode env1 newUser |

	currentMode := self defaultEnvironmentClass areUsersMultiEnvironment.
	self defaultEnvironmentClass areUsersMultiEnvironment: true.

	env1 := (self defaultEnvironmentClass newNamed: 'env1') addToCache.

	newUser := self defaultBpmUserClass getExistingOrNewUserNamed: 'alfred'.
	self assert: (newUser username = 'alfred').
	self deny: (env1 includesUserNamed: newUser username).

	env1 registerUser: newUser ifPresent: [].

	self assert: (env1 includesUserNamed: newUser username).
	env1 unregisterUser: newUser.
	self deny: (env1 includesUserNamed: newUser username).

	newUser removeFromCache.
	env1 removeFromCache.

	self defaultEnvironmentClass areUsersMultiEnvironment: currentMode.