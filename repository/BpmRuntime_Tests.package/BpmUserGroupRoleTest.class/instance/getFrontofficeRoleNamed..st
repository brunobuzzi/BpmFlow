other
getFrontofficeRoleNamed: aString

	^frontofficeRoles at: aString ifAbsent: [self assert: false]