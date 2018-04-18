other
includesAssignment: aBpmTaskAssignment
	"Answer whether or not the receiver includes <aBpmTaskAssignment> "

	^(rolesAndAssignment at: aBpmTaskAssignment getRoleName ifAbsent: [^false]) identityIncludes: aBpmTaskAssignment