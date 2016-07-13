assignment
moveFromCurrentToFinished: aBpmTaskAssignment
	"The receiver move the assignment <aBpmTaskAssignment> from current collection to finished collection"

	self getCurrentAssigmentsInbox removeEntry: aBpmTaskAssignment ifAbsent: [self throwExceptionTaskAssignmentNotFound].

	self getFinishedAssigmentsInbox acceptEntry: aBpmTaskAssignment.