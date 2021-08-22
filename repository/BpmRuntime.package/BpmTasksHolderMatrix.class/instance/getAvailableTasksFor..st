task handling
getAvailableTasksFor: roleName
	"Answer a (reduce conflict and indexable) collection with all available/free tasks for the role named <roleName>"

	^rolesAndAssignment at: roleName ifAbsent: [RcIdentityBag new]