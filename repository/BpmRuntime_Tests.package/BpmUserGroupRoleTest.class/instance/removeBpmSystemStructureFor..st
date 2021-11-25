other
removeBpmSystemStructureFor: index
	"The receiver remove all created structures from the system"
	| env backApp1 backApp2 frontApp1 frontApp2 front_role back_role front_user back_user |

	env := self getEnvironmentNamed: 'env-', index printString .
	backApp1 := self getApplicationNamed: 'b-app1-', index printString.
	backApp2 := self getApplicationNamed: 'b-app2-', index printString.
	frontApp1 := self getApplicationNamed: 'f-app1-', index printString.
	frontApp2 := self getApplicationNamed: 'f-app2-', index printString.
	front_user := self getUserNamed: 'fuser-', index printString.
	back_user := self getUserNamed: 'buser-', index printString.

	front_role := self getFrontofficeRoleNamed: 'app1-front-role1-', index printString.
	testRoot removeRole: front_role in: frontApp1 applicationName.

	front_role := self getFrontofficeRoleNamed: 'app1-front-role2-', index printString.
	testRoot removeRole: front_role in: frontApp1 applicationName.

	front_role := self getFrontofficeRoleNamed: 'app2-front-role1-', index printString.
	testRoot removeRole: front_role in: frontApp2 applicationName.

	front_role := self getFrontofficeRoleNamed: 'app2-front-role2-', index printString.
	testRoot removeRole: front_role in: frontApp2 applicationName.

	back_role := self getBackofficeRoleNamed: 'app1-back-role1-', index printString.
	testRoot removeRole: back_role in: backApp1 applicationName.

	back_role := self getBackofficeRoleNamed: 'app1-back-role2-', index printString.
	testRoot removeRole: back_role in: backApp1 applicationName.

	back_role := self getBackofficeRoleNamed: 'app2-back-role1-', index printString.
	testRoot removeRole: back_role in: backApp2 applicationName.

	back_role := self getBackofficeRoleNamed: 'app2-back-role2-', index printString.
	testRoot removeRole: back_role in: backApp2 applicationName.

	env unregisterUser: front_user;
		unregisterUser: back_user;
		unregisterApplication: frontApp1;
		unregisterApplication: frontApp2;
		unregisterApplication: backApp1;
		unregisterApplication: backApp2.
	testRoot unregisterEnvironment: env.