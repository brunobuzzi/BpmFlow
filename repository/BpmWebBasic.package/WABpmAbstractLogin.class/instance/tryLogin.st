other
tryLogin
	| logedUser loginMode |

	loginFailed := false.
	loginMode := self getGemStoneServerConfiguration loginModeFor: 'orbeon-processes-web'.
	(loginMode validateUser: name password: password on: self session systemRoot) ifFalse: [loginFailed := true. ^loginAttempts := loginAttempts + 1].

	logedUser := self session systemRoot getUserNamed: name.

	(logedUser notNil and: [self checkAccessToApplicationFor: logedUser]) ifFalse: [loginFailed := true. ^loginAttempts := loginAttempts + 1].

	self session systemRoot areUsersMultiEnvironment 
	ifTrue: [(logedUser getBpmEnvironments anySatisfy: [:each | each == self session bpmEnvironment]) ifFalse: [loginFailed := true. ^loginAttempts := loginAttempts + 1]]
	ifFalse: [logedUser isInAdminsEnvironment ifTrue: [^self setAdminUserWith: logedUser]. "if is admin user and single environment --> we render the environment combo only for admin user"
				(logedUser getBpmEnvironments size = 1) 
				ifTrue: [self setUniqueEnvironmentFor: logedUser]
				ifFalse: [loginFailed := true. ^loginAttempts := loginAttempts + 1]].

	loginFailed := false.
	self session user: logedUser.

	(self session systemRoot areUsersMultiEnvironment or: [self session systemRoot areUsersMultiEnvironment not and: [logedUser isInAdminsEnvironment not]]) 
	ifTrue: [self showPortalFor: self session user].	
	"if areUsersMultiEnvironment = false and: [logedUser is IN admin environment] --> display a combo to select the Environment.
	otherwise render the Portal"