assignment
getMyFinishedTaskAssignmentsWithId: processId
	"Answer a collection with all assignments <BpmTaskAssignment> where the <BpmProcess> id is equal to <processId>"
	| assignments |

	assignments := OrderedCollection new.

	assignments addAll: (GsQuery fromSelectBlock: {:each | each.processId = processId} on: self getFinishedAssignments) queryResult.

	^assignments select: [:each | each isAvailableFor: self].