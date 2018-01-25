other
includesAssignment: aBpmTaskAssignment
	"Answer whether or not the receiver includes <aBpmTaskAssignment> "

	^rolesAndAssignment anySatisfy: [:rcCollection| rcCollection identityIncludes: aBpmTaskAssignment]