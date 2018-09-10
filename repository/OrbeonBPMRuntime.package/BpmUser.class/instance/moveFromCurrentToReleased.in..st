assignment
moveFromCurrentToReleased: aBpmTaskAssignment in: aBpmEnvironment
	"The receiver move the assignment <aBpmTaskAssignment> from current inbox to released inbox"

	(self getCurrentAssignmentsInboxIn: aBpmEnvironment) removeEntry: aBpmTaskAssignment ifAbsent: [self throwExceptionTaskAssignmentNotFound].

	(self getReleasedAssignmentsInboxIn: aBpmEnvironment) acceptEntry: aBpmTaskAssignment.