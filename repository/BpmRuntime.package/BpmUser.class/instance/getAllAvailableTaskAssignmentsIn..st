assignment
getAllAvailableTaskAssignmentsIn: aBpmEnviroment
	"Answer a collection with all available assignments <BpmTaskAssignment> for the receiver"
	| assignments |

	assignments := OrderedCollection new.
	(self rolesIn: aBpmEnviroment) do: [:eachRole | | matrix |
		matrix := eachRole application availableTasksMatrix.
		assignments addAll: (matrix getAvailableTasksFor: eachRole name)].

	^assignments select: [:each | each isAvailableFor: self]. "check for runtime context"