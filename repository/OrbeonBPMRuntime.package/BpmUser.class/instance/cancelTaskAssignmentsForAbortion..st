assignment
cancelTaskAssignmentsForAbortion: aBpmProcessInstance
	"The receiver cancel all <BpmTaskAssignment> taken by the receiver because the <BpmProcessInstance> has been aborted"
	| takenAssigments |

	takenAssigments := OrderedCollection withAll: self getCurrentAssignments.

	(takenAssigments select: [:eachAssignment | eachAssignment process == aBpmProcessInstance]) do: [:eachAssignment |  

		eachAssignment user: nil. "add to free matrix, user set to nil"

		"remove the <aBpmTaskAssignment> from the inbox"
		self getCurrentAssignmentsInbox removeEntry: eachAssignment ifAbsent: [self throwExceptionTaskAssignmentNotFound].

	].