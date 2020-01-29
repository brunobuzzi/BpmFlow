test
testGrantRoleToUser

	1 to: 5 do: [:index | | env fuser buser frole brole |
		env := self getEnvironmentNamed: 'env-', index printString.
		fuser := self getUserNamed: 'fuser-', index printString.
		frole := self getFrontofficeRoleNamed: 'front-role-', index printString.
		buser := self getUserNamed: 'buser-', index printString.
		brole := self getBackofficeRoleNamed: 'back-role-', index printString.
		self assert: (frole isGranted: fuser).
		self assert: (brole isGranted: buser).
		self deny: (fuser isBackofficeUserIn: env).
		self assert: (buser isBackofficeUserIn: env).
		self deny: (buser isFrontOfficeUserIn: env).
		self assert: (fuser isFrontOfficeUserIn: env).
		self deny: (buser isBackofficeUserAndAdminIn: env).
		brole isAdmin: true.
		self assert: (buser isBackofficeUserAndAdminIn: env).
		self assert: frole usersAssociations size equals: 1.
		self assert: brole usersAssociations size equals: 1.
		self assert: fuser rolesAssociation size equals: 1.
		self assert: buser rolesAssociation size equals: 1.
		self assert: (fuser getVisibleApplicationsIn: env) size equals: 1.
		self assert: (buser getVisibleApplicationsIn: env) size equals: 1.
		self assert: (fuser getVisibleRolesIn: env) size equals: 0.
		self assert: (buser getVisibleRolesIn: env) size equals: 2.
		self assert: (fuser getVisibleUsersIn: env) size equals: 0.
		self assert: (buser getVisibleUsersIn: env) size equals: 2.
		frole ungrantUser: fuser.
		brole ungrantUser: buser.
		self assert: (fuser getVisibleApplicationsIn: env) size equals: 0.
		self assert: (buser getVisibleApplicationsIn: env) size equals: 0.
		self assert: (fuser getVisibleRolesIn: env) size equals: 0.
		self assert: (buser getVisibleRolesIn: env) size equals: 0.
		self assert: (fuser getVisibleUsersIn: env) size equals: 0.
		self assert: (buser getVisibleUsersIn: env) size equals: 0.
		self assert: frole usersAssociations size equals: 2.
		self assert: brole usersAssociations size equals: 2.
		self assert: fuser rolesAssociation size equals: 2.
		self assert: buser rolesAssociation size equals: 2.
		self deny: (frole isGranted: fuser).
		self deny: (brole isGranted: buser).
		frole grantUser: fuser.
		brole grantUser: buser.
		self assert: frole usersAssociations size equals: 3.
		self assert: brole usersAssociations size equals: 3.
		self assert: fuser rolesAssociation size equals: 3.
		self assert: buser rolesAssociation size equals: 3.
		self assert: (frole isGranted: fuser).
		self assert: (brole isGranted: buser).
	].