assignment
moveFromCurrentToReleased: aBpmTaskAssignment
	"The receiver move the assignment <aBpmTaskAssignment> from current inbox to released inbox"

	self getCurrentAssignmentsInbox removeEntry: aBpmTaskAssignment ifAbsent: [self throwExceptionTaskAssignmentNotFound].

	self getReleasedAssignmentsInbox acceptEntry: aBpmTaskAssignment.