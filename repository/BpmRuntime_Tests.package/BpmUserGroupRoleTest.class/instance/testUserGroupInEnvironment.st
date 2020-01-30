test
testUserGroupInEnvironment

	1 to: 5 do: [:index | | environment fuser buser frole brole |
		environment := self getEnvironmentNamed: 'env-', index printString.
		fuser := self getUserNamed: 'fuser-', index printString.
		frole := self getFrontofficeRoleNamed: 'front-role-', index printString.
		buser := self getUserNamed: 'buser-', index printString.
		brole := self getBackofficeRoleNamed: 'back-role-', index printString.
	].