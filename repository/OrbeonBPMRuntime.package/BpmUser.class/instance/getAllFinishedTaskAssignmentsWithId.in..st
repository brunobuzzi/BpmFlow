assignment
getAllFinishedTaskAssignmentsWithId: processId in: aBpmEnvironment
	"Answer a collection with all assignments <BpmTaskAssignment> where the <BpmProcess> id is equal to <processId>"
	| assignments |

	assignments := OrderedCollection new.
	(self rolesIn: aBpmEnvironment) do: [:eachRole | | matrix |
		matrix := self getFinishedTasksMatrixClass getMatrixForApplicationNamed: eachRole getApplicationName.
		assignments addAll: (matrix getAvailableTasksFor: eachRole name satisfying: {:each | each.processId = processId}).
	].

	^assignments select: [:each | each isAvailableFor: self].