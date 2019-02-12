task handling
addAssignment: aBpmTaskAssignment
	"The receiver add the task assignment <aBpmTaskAssignment> from it's task collection and set <matrix> instance variable of <aBpmTaskAssignment> with itself"

	^self addAssignment: aBpmTaskAssignment forRoleNamed: aBpmTaskAssignment getRoleName