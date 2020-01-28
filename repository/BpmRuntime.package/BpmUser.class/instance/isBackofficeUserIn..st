roles
isBackofficeUserIn: aBpmEnvironment
	"Answer whether or not the receiver is a backoffice user in environment <aBpmEnvironment>.
	It has to have at least one backoffice role in environment <aBpmEnvironment>"

	^(self rolesIn: aBpmEnvironment) anySatisfy: [:each | each isBackofficeRole]