test
testGrantRoleToUser

	1 to: 5 do: [:index | 
		self assert: ((self getFrontofficeRoleNamed: 'front-role-', index printString) isGranted: (self getUserNamed: 'fuser-', index printString)).
		self assert: ((self getBackofficeRoleNamed: 'back-role-', index printString) isGranted: (self getUserNamed: 'buser-', index printString)).
	].

	1 to: 5 do: [:index | 
		((self getFrontofficeRoleNamed: 'front-role-', index printString) ungrantUser: (self getUserNamed: 'fuser-', index printString)).
		((self getBackofficeRoleNamed: 'back-role-', index printString) ungrantUser: (self getUserNamed: 'buser-', index printString)).
	].

	1 to: 5 do: [:index | 
		self deny: ((self getFrontofficeRoleNamed: 'front-role-', index printString) isGranted: (self getUserNamed: 'fuser-', index printString)).
		self deny: ((self getBackofficeRoleNamed: 'back-role-', index printString) isGranted: (self getUserNamed: 'buser-', index printString)).
	].

	1 to: 5 do: [:index | 
		((self getFrontofficeRoleNamed: 'front-role-', index printString) grantUser: (self getUserNamed: 'fuser-', index printString)).
		((self getBackofficeRoleNamed: 'back-role-', index printString) grantUser: (self getUserNamed: 'buser-', index printString)).
	].

	1 to: 5 do: [:index | 
		self assert: ((self getFrontofficeRoleNamed: 'front-role-', index printString) isGranted: (self getUserNamed: 'fuser-', index printString)).
		self assert: ((self getBackofficeRoleNamed: 'back-role-', index printString) isGranted: (self getUserNamed: 'buser-', index printString)).
	].