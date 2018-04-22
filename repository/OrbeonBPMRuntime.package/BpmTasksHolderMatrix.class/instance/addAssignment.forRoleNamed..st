task handling
addAssignment: aBpmTaskAssignment forRoleNamed: aRoleName
	"The receiver add the task assignment <aBpmTaskAssignment> from it's task collection."
	<matrix>

	aBpmTaskAssignment matrix: self.

	^(rolesAndAssignment at: aRoleName ifAbsent: [self createSlotFor: aRoleName]) add: aBpmTaskAssignment