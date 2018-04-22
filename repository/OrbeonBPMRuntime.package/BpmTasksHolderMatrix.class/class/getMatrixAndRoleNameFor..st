query
getMatrixAndRoleNameFor: aBpmTaskAssignment
	"Answer anArray with 2 elements. The first is the <BpmTasksHolderMatrix> that holds the assignment <aBpmTaskAssignment> and the second is the role name holding the assignment"

	^self getMatrixAndRoleNameFor: aBpmTaskAssignment ifNone: [nil]