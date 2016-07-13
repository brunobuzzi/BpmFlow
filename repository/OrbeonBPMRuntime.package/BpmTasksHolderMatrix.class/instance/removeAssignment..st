task handling
removeAssignment: aBpmTaskAssignment
	"The receiver remove the task assignment <aBpmTaskAssignment> from it's task collection.
	1- Get the collection for the task role
	2- Remove the object"

	^(rolesAndAssignment at: aBpmTaskAssignment getRoleName ifAbsent: [self throwExceptionNoSlotFor: aBpmTaskAssignment roleName])
			remove: aBpmTaskAssignment
			ifAbsent: [self throwExceptionTaskAssignmentNotFound]