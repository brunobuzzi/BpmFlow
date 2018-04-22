task handling
addAssignment: aBpmTaskAssignment
	"The receiver add the task assignment <aBpmTaskAssignment> from it's task collection."
	<matrix>

	^self addAssignment: aBpmTaskAssignment forRoleNamed: aBpmTaskAssignment getRoleName