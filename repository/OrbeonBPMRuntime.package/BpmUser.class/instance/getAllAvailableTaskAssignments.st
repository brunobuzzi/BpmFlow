assignment
getAllAvailableTaskAssignments
	"Answer a collection with all available assignments <BpmTaskAssignment> for the receiver"
	| tasks |

	tasks := OrderedCollection new.
	self getApplications do: [:eachApp |  | matrix |
		matrix := self getMatrixManagerClass getMatrixForApplicationNamed: eachApp applicationName.
		self roles do: [:eachRole | 
			tasks addAll: (matrix getAvailableTasksFor: eachRole name)]].

	^tasks select: [:each | each isAvailableFor: self]