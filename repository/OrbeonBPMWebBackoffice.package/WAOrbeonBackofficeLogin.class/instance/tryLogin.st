other
tryLogin
	| logedUser loginMode |

	loginMode := self getGemStoneServerConfiguration loginModeFor: 'orbeon-processes-web'.
	(loginMode validateUser: name password: password) ifFalse: [^loginAttempts := loginAttempts + 1].

	logedUser := BpmUser getExistingOrNewUserNamed: name.

	logedUser isBackofficeUser ifFalse: [^loginAttempts := loginAttempts + 1].

	self session user: logedUser. 

	"self show: (WAOrbeonFormBackofficeUser on: logedUser)"

	self show: (WAProcessBackofficePortal on: logedUser)