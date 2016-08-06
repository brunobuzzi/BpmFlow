assignment
getAllTaskAssignmentsWithId: processId
	"Answer a collection with all assignments <BpmTaskAssignment> where the <BpmProcess> id is equal to <processId>"
	| assignments |

	assignments := OrderedCollection new.
	self roles do: [:eachRole | | matrix |
		matrix := self getMatrixManagerClass getMatrixForApplicationNamed: eachRole getApplicationName.
		assignments addAll: (matrix getAvailableTasksFor: eachRole name satisfying: {:each | each.processId = processId})
	].

	^assignments select: [:each | each isAvailableFor: self].