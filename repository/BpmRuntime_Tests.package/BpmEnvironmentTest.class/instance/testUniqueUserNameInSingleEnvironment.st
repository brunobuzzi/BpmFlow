other
testUniqueUserNameInSingleEnvironment
	| currentMode env1 newUser |

	currentMode := self defaultEnvironmentClass areUsersMultiEnvironment.
	self defaultEnvironmentClass areUsersMultiEnvironment: false.

	env1 := (self defaultEnvironmentClass newNamed: 'env1') addToCache.

	[newUser := self defaultBpmUserClass getExistingOrNewUserNamed: 'alfred'] on: ImproperBpmOperationException do: [:ex | self assert: newUser isNil].

	newUser := self defaultBpmUserClass getExistingOrNewUserNamed: 'alfred2' password: ' ' forEnvironment: env1.
	self assert: (newUser username = 'alfred2@env1').
	self assert: (env1 includesUserNamed: newUser username).

	env1 unregisterUser: newUser.
	self deny: (env1 includesUserNamed: newUser username).

	newUser removeFromCache.
	env1 removeFromCache.

	self defaultEnvironmentClass areUsersMultiEnvironment: currentMode.