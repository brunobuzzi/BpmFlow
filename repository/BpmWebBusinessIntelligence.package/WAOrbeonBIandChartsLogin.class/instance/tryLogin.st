other
tryLogin
	| logedUser loginMode |

	loginMode := self getGemStoneServerConfiguration loginModeFor: 'orbeon-processes-web'.
	(loginMode validateUser: name password: password) ifFalse: [^loginAttempts := loginAttempts + 1].

	logedUser := BpmUser getExistingOrNewUserNamed: name.

	(logedUser getBpmEnvironments anySatisfy: [:each | each == self session bpmEnvironment]) ifFalse: [^loginAttempts := loginAttempts + 1].

	self session user: logedUser.

	self setLanguage.

	self show: (WAProcessBIPortal on: logedUser).