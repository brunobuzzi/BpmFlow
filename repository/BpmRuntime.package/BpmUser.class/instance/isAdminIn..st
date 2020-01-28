roles
isAdminIn: aBpmEnvironment
	"Answer whether or not the receiver is an admin user in environment <aBpmEnvironment>.
	It has to have at least one admin role in environment <aBpmEnvironment>"

	^(self rolesIn: aBpmEnvironment) anySatisfy: [:each | each isAdmin]