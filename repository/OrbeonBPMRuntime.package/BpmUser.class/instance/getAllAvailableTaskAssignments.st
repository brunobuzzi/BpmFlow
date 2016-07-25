assignment
getAllAvailableTaskAssignments
	"Answer a collection with all available assignments <BpmTaskAssignment> for the receiver"
	| assignments |

	assignments := OrderedCollection new.
	self getApplications do: [:eachApp |  | matrix |
		matrix := self getMatrixManagerClass getMatrixForApplicationNamed: eachApp applicationName.
		self roles do: [:eachRole | 
			assignments addAll: (matrix getAvailableTasksFor: eachRole name)]].

	^assignments select: [:each | each isAvailableFor: self]