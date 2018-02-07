other
getAllCurrentTaskAssignmentsWithId: processId
	"The receiver answer a collection of current <BpmTaskAssignment> with process id equal to <processId>"
	| assignments |

	"here search for FREE <BpmTaskAssignment>"
	assignments := user getAllTaskAssignmentsWithId: processId.

	"here search for already TAKEN <BpmTaskAssignment>"
	self getAllUsers do: [:eachUser | | possibleAssignments |
			possibleAssignments := (GsQuery fromSelectBlock: {:each | each.processId = processId} on: eachUser getCurrentAssignments) queryResult.
			assignments addAll: (possibleAssignments select: [:eachAssignment | user roles identityIncludes: eachAssignment role]) .
	].

	^assignments