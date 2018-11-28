other
resetAllRolesAndAssignments

	^self cache do: [:each | each resetRolesAndAssignments] "set <rolesAndAssignment> to Dictionary new"