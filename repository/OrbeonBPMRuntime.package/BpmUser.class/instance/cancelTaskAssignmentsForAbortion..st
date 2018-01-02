assignment
cancelTaskAssignmentsForAbortion: aBpmProcessInstance
	"The receiver cancel all <BpmTaskAssignment> taken by the receiver because the <BpmProcessInstance> has been aborted"
	| takenAssigments |

	takenAssigments := OrderedCollection withAll: self getCurrentAssigments.

	(takenAssigments select: [:eachAssignment | eachAssignment process == aBpmProcessInstance]) do: [:eachAssignment |  

		eachAssignment user: nil. "add to free matrix, user set to nil"

		"remove the <aBpmTaskAssignment> from the inbox"
		self getCurrentAssigmentsInbox removeEntry: eachAssignment ifAbsent: [self throwExceptionTaskAssignmentNotFound].

	].