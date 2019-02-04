other
testUsersSingleEnvironment
	"In a user single environment (areUsersMultiEnvironment: false) the same user can NOT be assigned to more than one <BpmEnvironment>.
	With the exception of 'admins' <BpmEnvironment>.
	So the rule is: a user can be assigned to 'admins' <BpmEnvironment> and other <BpmEnvironment>. A max of two if one of them is 'admins' "
	| env1 env2 newUser currentMode |

	currentMode := self defaultEnvironmentClass areUsersMultiEnvironment.
	self defaultEnvironmentClass areUsersMultiEnvironment: false.

	newUser := self defaultBpmUserClass getExistingOrNewUserNamed: 'alfred'.
	env1 := (BpmEnvironment newNamed: 'env1') addToCache.
	self assert: (self defaultEnvironmentClass includesEnvironmentNamed: env1 name).
	env2 := (BpmEnvironment newNamed: 'env2') addToCache.
	self assert: (self defaultEnvironmentClass includesEnvironmentNamed: env2 name).

	env1 registerUser: newUser.
	self assert: (env1 includesUserNamed: newUser username).

	"the second assignment is rejected (environment env2)"
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
	self assert: (self defaultBpmUserClass getUserNamed: newUser username) isNil.

	self defaultEnvironmentClass areUsersMultiEnvironment: currentMode.