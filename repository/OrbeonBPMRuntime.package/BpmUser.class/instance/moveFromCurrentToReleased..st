assignment
moveFromCurrentToReleased: aBpmTaskAssignment
	"The receiver move the assignment <aBpmTaskAssignment> from current inbox to released inbox"

	self getCurrentAssigmentsInbox removeEntry: aBpmTaskAssignment ifAbsent: [self throwExceptionTaskAssignmentNotFound].

	self getReleasedAssigmentsInbox acceptEntry: aBpmTaskAssignment.