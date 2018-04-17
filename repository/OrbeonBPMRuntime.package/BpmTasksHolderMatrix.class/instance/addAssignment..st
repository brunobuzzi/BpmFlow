task handling
addAssignment: aBpmTaskAssignment
	"The receiver add the task assignment <aBpmTaskAssignment> from it's task collection."
	<matrix>
	aBpmTaskAssignment matrix: self.

	^(rolesAndAssignment at: aBpmTaskAssignment getRoleName ifAbsent: [self createSlotFor: aBpmTaskAssignment getRoleName])
			add: aBpmTaskAssignment