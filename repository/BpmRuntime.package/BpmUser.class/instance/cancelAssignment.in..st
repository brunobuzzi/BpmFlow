assignment
cancelAssignment: aBpmTaskAssignment in: aBpmEnvironment
	"The receiver remove the assignment <aBpmTaskAssignment> from current inbox"

	(self getCurrentAssignmentsInboxIn: aBpmEnvironment) removeEntry: aBpmTaskAssignment ifAbsent: [self throwExceptionTaskAssignmentNotFound].