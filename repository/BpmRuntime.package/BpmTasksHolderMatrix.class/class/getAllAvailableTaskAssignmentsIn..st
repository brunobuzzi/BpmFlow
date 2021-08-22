query
getAllAvailableTaskAssignmentsIn: aBpmEnvironment
	"The receiver answer a collection with all running/pending tasks in all Applications"

	^aBpmEnvironment getAllAvailableTaskAssignments