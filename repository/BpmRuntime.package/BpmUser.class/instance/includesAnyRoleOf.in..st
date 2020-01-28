roles
includesAnyRoleOf: aCollection in: aBpmEnvironment
	"Answer whether or not the receiver has any role contained in <aCollection> for environment <aBpmEnvironment>"

	^(self rolesIn: aBpmEnvironment) anySatisfy: [:each | aCollection includesIdentical: each]