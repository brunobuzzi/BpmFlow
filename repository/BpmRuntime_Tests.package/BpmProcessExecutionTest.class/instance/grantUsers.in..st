facilities
grantUsers: grantArray in: appName

	grantArray do: [:eachAssoc | 
		(self defaultFrontOfficeRoleClass getRoleNamed: eachAssoc value in: appName) grantUser: (self getUserNamed: eachAssoc key) ifPresent: [].
	]