other
tryLogin
	| logedUser loginMode |

	loginMode := self getGemStoneServerConfiguration loginModeFor: 'orbeon-processes-web'.
	(loginMode validateUser: name password: password) ifFalse: [^loginAttempts := loginAttempts + 1].

	logedUser := BpmUser getExistingOrNewUserNamed: name.

	logedUser isBackofficeUser ifFalse: [^loginAttempts := loginAttempts + 1].

	self defaultEnvironmentClass areUsersMultiEnvironment 
	ifTrue: [(logedUser getBpmEnvironments anySatisfy: [:each | each == self session bpmEnvironment]) ifFalse: [^loginAttempts := loginAttempts + 1]]
	ifFalse: [logedUser isInAdminEnvironment ifTrue: [^adminUser := logedUser]. "if is admin user and single environment --> we render the environment combo only for admin user"
				(logedUser getBpmEnvironments size = 1) 
				ifTrue: [self setUniqueEnvironmentFor: logedUser]
				ifFalse: [^loginAttempts := loginAttempts + 1]].

	self session user: logedUser. 

	self setLanguage.

	self showBackofficePortalFor: logedUser