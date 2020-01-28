roles
isFrontOfficeUserIn: aBpmEnvironment
	"Answer whether or not the receiver is a frontoffice user in environment <aBpmEnvironment>.
	It has to have at least one frontoffice role in environment <aBpmEnvironment>"

	^(self rolesIn: aBpmEnvironment) anySatisfy: [:each | each isFrontofficeRole]