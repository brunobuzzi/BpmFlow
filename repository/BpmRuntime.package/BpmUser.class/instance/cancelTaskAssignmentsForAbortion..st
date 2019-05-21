assignment
cancelTaskAssignmentsForAbortion: aBpmProcessInstance
	"The receiver cancel all <BpmTaskAssignment> taken by the receiver because the <BpmProcessInstance> has been aborted"
	| takenAssigments |

	(self hasInboxFor: aBpmProcessInstance bpmEnvironment) ifFalse: [^self]. "the user has no inbox in the process environment -->  nothing to cancel"

	takenAssigments := OrderedCollection withAll: (self getCurrentAssignmentsIn: aBpmProcessInstance bpmEnvironment).

	(takenAssigments select: [:eachAssignment | eachAssignment process == aBpmProcessInstance]) do: [:eachAssignment |  

		eachAssignment user: nil. "add to free matrix, user set to nil"

		"remove the <aBpmTaskAssignment> from the inbox"
		(self getCurrentAssignmentsInboxIn: aBpmProcessInstance bpmEnvironment) removeEntry: eachAssignment ifAbsent: [self throwExceptionTaskAssignmentNotFound].

	].