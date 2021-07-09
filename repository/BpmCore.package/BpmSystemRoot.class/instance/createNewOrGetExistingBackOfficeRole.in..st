bpm users
createNewOrGetExistingBackOfficeRole: roleName in: anApplication

	^(anApplication getBackOfficeRoleNamed: roleName)
	ifNotNil: [:role | role]
	ifNil: [| role |
			role := BpmBackOfficeRole newNamed: roleName.
			anApplication addRole: role.
			role]