bpm roles
getBpmRoleType: aBpmRoleClass named: roleName in: appName

	^(aBpmRoleClass isBackofficeRole)
		ifTrue: [self getBackOfficeRoleNamed: roleName in: appName]
		ifFalse: [self getFrontOfficeRoleNamed: roleName in: appName]