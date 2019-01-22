*bpmwebbasic
tryLogin
	| logedUser loginMode |

	loginFailed := false.
	loginMode := self getGemStoneServerConfiguration loginModeFor: 'orbeon-processes-web'.
	(loginMode validateUser: name password: password) ifFalse: [loginFailed := true. ^loginAttempts := loginAttempts + 1].

	logedUser := BpmUser getExistingOrNewUserNamed: name.

	logedUser isBackofficeUser ifFalse: [loginFailed := true. ^loginAttempts := loginAttempts + 1].

	self defaultEnvironmentClass areUsersMultiEnvironment 
	ifTrue: [(logedUser getBpmEnvironments anySatisfy: [:each | each == self session bpmEnvironment]) ifFalse: [loginFailed := true. ^loginAttempts := loginAttempts + 1]]
	ifFalse: [logedUser isInAdminsEnvironment ifTrue: [^self setAdminUserWith: logedUser]. "if is admin user and single environment --> we render the environment combo only for admin user"
				(logedUser getBpmEnvironments size = 1) 
				ifTrue: [self setUniqueEnvironmentFor: logedUser]
				ifFalse: [loginFailed := true. ^loginAttempts := loginAttempts + 1]].

	loginFailed := false.
	self session user: logedUser.

	self defaultEnvironmentClass areUsersMultiEnvironment ifTrue: [self showPortalFor: self session user].