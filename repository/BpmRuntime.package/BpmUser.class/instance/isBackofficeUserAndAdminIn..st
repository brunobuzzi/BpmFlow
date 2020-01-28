roles
isBackofficeUserAndAdminIn: aBpmEnvironment
	"Answer whether or not the receiver is a backoffice user and admin in environment <aBpmEnvironment>.
	It has to have at least one backoffice role in environment with admin property in <aBpmEnvironment>"

	^(self rolesIn: aBpmEnvironment) anySatisfy: [:each | each isBackofficeUserAndAdmin]