other
getAllCurrentTaskAssignmentsWithId: processId
	"The receiver answer a collection of current <BpmTaskAssignment> with process id equal to <processId>"
	| assignments |

	"here search for FREE <BpmTaskAssignment>"
	assignments := user getAllTaskAssignmentsWithId: processId.

	"here search for already TAKEN <BpmTaskAssignment>"
	self getAllUsers do: [:eachUser | 
		(user getMatchedRolesWith: eachUser) do: [:eachRole | | rcIdentityBag |
			rcIdentityBag := self getMatrixManagerClass getAssignmentsCollectionFor: eachRole.
			assignments addAll: (GsQuery fromSelectBlock: {:each | each.processId = processId} on: rcIdentityBag) queryResult.
		]
	].

	^assignments