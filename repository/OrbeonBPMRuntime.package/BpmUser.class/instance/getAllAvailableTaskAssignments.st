assignment
getAllAvailableTaskAssignments
	"Answer a collection with all available assignments <BpmTaskAssignment> for the receiver"
	| assignments |

	assignments := OrderedCollection new.
	self roles do: [:eachRole | | matrix |
		matrix := self getMatrixManagerClass getMatrixForApplicationNamed: eachRole getApplicationName.
		assignments addAll: (matrix getAvailableTasksFor: eachRole name)].

	^assignments select: [:each | each isAvailableFor: self].