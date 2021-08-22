other
includesAssignment: aBpmTaskAssignment forRoleNamed: aRoleName
	"Answer whether or not the receiver includes <aBpmTaskAssignment> "

	^(rolesAndAssignment at: aRoleName ifAbsent: [^false]) identityIncludes: aBpmTaskAssignment