other
tryLogin
	| logedUser loginMode |

	loginMode := self getGemStoneServerConfiguration loginModeFor: 'orbeon-processes-web'.
	(loginMode validateUser: name password: password) ifFalse: [^loginAttempts := loginAttempts + 1].

	logedUser := BpmUser getExistingOrNewUserNamed: name.

	self session user: logedUser.

	"self show: (WAOrbeonFormUser on: logedUser)."

	self show: (WAProcessUserPortal on: logedUser).