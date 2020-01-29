other
getBackofficeRoleNamed: aString

	^backofficeRoles at: aString ifAbsent: [self assert: false]