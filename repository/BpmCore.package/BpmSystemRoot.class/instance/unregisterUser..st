bpm users
unregisterUser: aBpmUser

	aBpmUser isAdminUser ifTrue: [ImproperBpmOperationException signal: '[admin] user can no be removed'].

	aBpmUser rolesDo: [:eachRole | eachRole ungrantUser: self].

	aBpmUser bpmEnvironmentsDo: [:eachEnv | eachEnv unregisterUser: aBpmUser].
 
	^super unregisterUser: aBpmUser