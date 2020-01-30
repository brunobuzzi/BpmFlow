test
testGrantRoleToUser

	1 to: 5 do: [:index | | environment fuser buser frole brole |
		environment := self getEnvironmentNamed: 'env-', index printString.
		fuser := self getUserNamed: 'fuser-', index printString.
		frole := self getFrontofficeRoleNamed: 'app1-front-role1-', index printString.
		buser := self getUserNamed: 'buser-', index printString.
		brole := self getBackofficeRoleNamed: 'app1-back-role1-', index printString.
		frole grantUser: fuser.
		brole grantUser: buser.
		self assert: (frole isGranted: fuser).
		self assert: (brole isGranted: buser).
		self deny: (fuser isBackofficeUserIn: environment).
		self assert: (buser isBackofficeUserIn: environment).
		self deny: (buser isFrontOfficeUserIn: environment).
		self assert: (fuser isFrontOfficeUserIn: environment).
		self deny: (buser isBackofficeUserAndAdminIn: environment).
		brole isAdmin: true.
		self assert: (buser isBackofficeUserAndAdminIn: environment).
		self assert: frole usersAssociations size equals: 1. "each grant or ungrant creates an entry in role's <usersAssociations> collection"
		self assert: brole usersAssociations size equals: 1.
		self assert: fuser rolesAssociation size equals: 1. "each grant or ungrant creates an entry in user's <rolesAssociation> collection"
		self assert: buser rolesAssociation size equals: 1.
		self assert: (fuser getVisibleApplicationsIn: environment) size equals: 1. "applications that can be reached by the user"
		self assert: (buser getVisibleApplicationsIn: environment) size equals: 4.
		self assert: (fuser getVisibleRolesIn: environment) size equals: 0.
		self assert: (buser getVisibleRolesIn: environment) size equals: 8. "the backoffice roles can see frontoffice roles but NOT vicevsersa"
		self assert: (fuser getVisibleUsersIn: environment) size equals: 0.
		self assert: (buser getVisibleUsersIn: environment) size equals: 2. "backoffice users can see frontoffice users but NOT vicevsersa"
		frole ungrantUser: fuser.
		brole ungrantUser: buser.
		self assert: (fuser getVisibleApplicationsIn: environment) size equals: 0.
		self assert: (buser getVisibleApplicationsIn: environment) size equals: 0.
		self assert: (fuser getVisibleRolesIn: environment) size equals: 0.
		self assert: (buser getVisibleRolesIn: environment) size equals: 0.
		self assert: (fuser getVisibleUsersIn: environment) size equals: 0.
		self assert: (buser getVisibleUsersIn: environment) size equals: 0.
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
		frole ungrantUser: fuser.
		brole ungrantUser: buser.
	].