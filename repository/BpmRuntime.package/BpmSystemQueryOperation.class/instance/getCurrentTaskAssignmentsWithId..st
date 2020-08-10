process id
getCurrentTaskAssignmentsWithId: processId
	"The receiver answer a collection of current <BpmTaskAssignment> with process id equal to <processId>"
	| assignments |

	"here search for FREE <BpmTaskAssignment>"
	assignments := user getAllTaskAssignmentsWithId: processId in: bpmEnvironment.

	"here search for already TAKEN <BpmTaskAssignment>"
	self usersDo: [:eachUser | | possibleAssignments |
			possibleAssignments := (GsQuery fromSelectBlock: {:each | each.processId = processId} on: (eachUser getCurrentAssignmentsIn: bpmEnvironment)) queryResult.
			assignments addAll: (possibleAssignments select: [:eachAssignment | user rolesIdentityIncludes: eachAssignment role]) .
	].

	^assignments