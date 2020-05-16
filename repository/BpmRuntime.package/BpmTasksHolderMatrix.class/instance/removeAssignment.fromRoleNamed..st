task handling
removeAssignment: aBpmTaskAssignment fromRoleNamed: aRoleName
	"The receiver remove the task assignment <aBpmTaskAssignment> from it's task collection.
	1- Get the collection for the task role
	2- Remove the object"

	^(rolesAndAssignment at: aRoleName ifAbsent: [self throwExceptionNoSlotFor: aRoleName])
			remove: aBpmTaskAssignment
			ifAbsent: [self throwExceptionTaskAssignmentNotFound]