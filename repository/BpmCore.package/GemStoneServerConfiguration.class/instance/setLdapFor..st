ldap
setLdapFor: webAppName

	(loginModes at: webAppName) isLdapMode 
	ifTrue: [^loginModes at: webAppName]. "if current is LdapMode --> nothing to do"

	^loginModes at: webAppName put: AppLdapLogin new