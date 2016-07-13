other
asAssignmentFor: aBpmRole in: aBpmRunningTasksMatrix
	"The receiver answer a task assignment for a <BpmRole> based on it self"

	^(BpmTaskAssignment newFor: process task: self in: aBpmRunningTasksMatrix)
			roleName: aBpmRole name;
			yourself