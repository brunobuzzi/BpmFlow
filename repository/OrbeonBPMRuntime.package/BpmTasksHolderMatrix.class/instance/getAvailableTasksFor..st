task handling
getAvailableTasksFor: roleName
	"Answer a collection with all available/free tasks for the role named <roleName>"

	^rolesAndAssignment at: roleName ifAbsent: [OrderedCollection new]