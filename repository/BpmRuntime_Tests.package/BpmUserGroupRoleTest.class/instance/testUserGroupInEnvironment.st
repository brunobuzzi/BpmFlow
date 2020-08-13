test
testUserGroupInEnvironment
	| environment2 generalUser |

	environment2 := self getEnvironmentNamed: 'env-2'.
	generalUser := self getUserNamed: 'buser-2'.
	environment2 registerUser: generalUser.

	1 to: 5 do: [:index | | environment fuser buser frole brole newUserGroup |
		environment := self getEnvironmentNamed: 'env-', index printString.
		environment registerUser: generalUser ifPresent: [].
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
			addUser: buser;
			addUser: generalUser.
		self assert: (fuser isBackofficeUserIn: environment).
		self assert: (newUserGroup isGranted: fuser with: brole).
		self assert: (newUserGroup isGranted: fuser with: frole).
		self assert: (newUserGroup isGranted: buser with: brole).
		self assert: (newUserGroup isGranted: buser with: frole).
		self assert: (newUserGroup isGranted: generalUser with: brole).
		self assert: (newUserGroup isGranted: generalUser with: frole).

		newUserGroup removeUser: fuser.
		self deny: (fuser isBackofficeUserIn: environment).
		self deny: (newUserGroup isGranted: fuser with: brole). 
		self deny: (newUserGroup isGranted: fuser with: frole). " <fuser> is was remove from the user group --> does no inherit roles from it"
		self assert: (frole isGranted: fuser). "but <fuser> has the role <frole> because is a direct assignation"
	].

	self assert: generalUser bpmEnvironmentsSize equals: 5.
	environments do: [:each | each unregisterUser: generalUser].
	self assert: generalUser bpmEnvironmentsSize equals: 0.