other
checkAccessToApplicationFor: aBpmUser
	"Answer wheter or not the user <aBpmUser> has access to the Backoffice application.
	1) <aBpmUser> is backoffice user in the selected environment --> true or:
	2) <aBpmUser> is registered in the the selected environment and belong to 'admins' environment with a backoffice role --> true"

	^(aBpmUser isBackofficeUserIn: self session bpmEnvironment) 
		or: [(self defaultEnvironmentClass getAdminsEnvironment includesUserNamed: aBpmUser username) and: [(aBpmUser isBackofficeUserIn: self defaultEnvironmentClass getAdminsEnvironment)]]