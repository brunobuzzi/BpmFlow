process id
getCurrentTaskAssignmentsWithId: processId
	"The receiver answer a collection of current <BpmTaskAssignment> with process id equal to <processId>"
	| assignments |

	"here search for FREE <BpmTaskAssignment>"
	assignments := (user getAllTaskAssignmentsWithId: processId) select: [:each | each bpmEnvironmentName = bpmEnvironment name].

	"here search for already TAKEN <BpmTaskAssignment>"
	self getAllUsers do: [:eachUser | | possibleAssignments roles |
			possibleAssignments := (GsQuery fromSelectBlock: {:each | each.processId = processId} on: eachUser getCurrentAssignments) queryResult.
			roles := user roles.
			assignments addAll: (possibleAssignments select: [:eachAssignment | roles identityIncludes: eachAssignment role]) .
	].

	^assignments