execution
removeFromCurrentMatrixForNextPerformer
	"The receiver call the matrix <aBpmRunningTasksMatrix> to be removed"

	^matrix removeAssignment: self fromRoleNamed: (self getNextRoleIfNone: []) name.