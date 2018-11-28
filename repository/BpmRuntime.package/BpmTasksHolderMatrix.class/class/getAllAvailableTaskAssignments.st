query
getAllAvailableTaskAssignments
	"The receiver answer a collection with all running/pending tasks in all Applications"

	^self getAllAvailableTaskAssignmentsIn: self getApplicationsCache