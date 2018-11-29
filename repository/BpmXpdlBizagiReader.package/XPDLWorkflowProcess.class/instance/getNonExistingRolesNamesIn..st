import checks
getNonExistingRolesNamesIn: anOrbeonApplication

	^(lanes reject: [:each | BpmFrontOfficeRole hasRoleNamed: each getName in: anOrbeonApplication])
			collect: [:each | each getName].