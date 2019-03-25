subcomponents
openRolesManager

	(arena isKindOf: WABpmRoleManager)
	ifTrue: [^arena].

	^WABpmRoleManager parent: self on: self defaultFrontOfficeRoleClass new.