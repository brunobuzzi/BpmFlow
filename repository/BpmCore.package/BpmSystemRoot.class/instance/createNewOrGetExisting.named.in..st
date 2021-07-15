bpm roles
createNewOrGetExisting: aBpmRoleClass named: roleName in: appName
	| application |
	
	application := self getApplicationNamed: appName ifNone: [NoApplicationException signal: 'Applicaiton [', appName , '] does NOT exist'].

	^(self getBackOfficeRoleNamed: roleName in: appName)
	ifNotNil: [:role | role]
	ifNil: [| role |
			role := aBpmRoleClass newNamed: roleName.
			application addRole: role.
			role]