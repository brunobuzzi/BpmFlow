other
resetAll

	^self cache do: [:each | each resetAll] "set <rolesAndAssignment> to Dictionary new"