test
testUserGroupInEnvironment

	1 to: 5 do: [:index | | environment fuser buser frole brole newUserGroup |
		environment := self getEnvironmentNamed: 'env-', index printString.
		fuser := self getUserNamed: 'fuser-', index printString.
		frole := self getFrontofficeRoleNamed: 'app1-front-role1-', index printString.
		buser := self getUserNamed: 'buser-', index printString.
		brole := self getBackofficeRoleNamed: 'app1-back-role1-', index printString.
		frole grantUser: fuser.
		brole grantUser: buser.

		newUserGroup := BpmUserGroup newNamed: 'backrole1-frontrole1'.
		environment registerUserGroup: newUserGroup.
		newUserGroup 
			addRole: brole;
			addRole: frole;
			addUser: fuser;
			addUser: buser.
		self assert: (fuser isBackofficeUserIn: environment).


		newUserGroup removeUser: fuser.
		self deny: (fuser isBackofficeUserIn: environment).
	].