assignment
moveFromCurrentToFinished: aBpmTaskAssignment in: aBpmEnvironment
	"The receiver move the assignment <aBpmTaskAssignment> from current collection to finished collection"

	(self getCurrentAssignmentsInboxIn: aBpmEnvironment) removeEntry: aBpmTaskAssignment ifAbsent: [self throwExceptionTaskAssignmentNotFound].

	(self getFinishedAssignmentsInboxIn: aBpmEnvironment) acceptEntry: aBpmTaskAssignment.