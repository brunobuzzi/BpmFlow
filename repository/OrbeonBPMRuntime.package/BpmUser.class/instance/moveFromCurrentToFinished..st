assignment
moveFromCurrentToFinished: aBpmTaskAssignment
	"The receiver move the assignment <aBpmTaskAssignment> from current collection to finished collection"
	<matrix>
	self getCurrentAssignmentsInbox removeEntry: aBpmTaskAssignment ifAbsent: [self throwExceptionTaskAssignmentNotFound].

	self getFinishedAssignmentsInbox acceptEntry: aBpmTaskAssignment.