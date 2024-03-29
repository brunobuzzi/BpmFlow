other
createBpmSystemStructureFor: index
	"The receiver create the basic structure to run the tests for iteration <index>"
	| env backApp1 backApp2 frontApp1 frontApp2 front_role back_role front_user back_user |

	"1) create the environment and application "
	env := testRoot getExistingEnvironmentOrCreateNewNamed: 'env-', index printString.
	environments at: 'env-', index printString put: env.
	frontApp1 := testRoot getExistingBpmApplicationOrCreateNewNamed: 'f-app1-', index printString in: env name.
	frontApp2 := testRoot getExistingBpmApplicationOrCreateNewNamed: 'f-app2-', index printString in: env name.
	backApp1 := testRoot getExistingBpmApplicationOrCreateNewNamed: 'b-app1-', index printString in: env name.
	backApp2 := testRoot getExistingBpmApplicationOrCreateNewNamed: 'b-app2-', index printString in: env name.
	applications at: 'f-app1-', index printString put: frontApp1;
		at: 'f-app2-', index printString put: frontApp2;
		at: 'b-app1-', index printString put: backApp1;
		at: 'b-app2-', index printString put: backApp2.
	"env registerApplication: frontApp1; 
		registerApplication: frontApp2;
		registerApplication: backApp1;
		registerApplication: backApp2."

	"2) create the user and register it in the environment"
	front_user := testRoot getExistingOrNewUserNamed: 'fuser-', index printString.
	users at: 'fuser-', index printString put: front_user.	
	env registerUser: front_user.

	"3) create the user and register it in the environment"
	back_user := testRoot getExistingOrNewUserNamed: 'buser-', index printString.
	users at: 'buser-', index printString put: back_user.
	env registerUser: back_user.

	"4) create a backoffice and frontoffice roles in the application"
	front_role := testRoot createNewOrGetExistingFrontOfficeRole: 'app1-front-role1-', index printString in: 'f-app1-', index printString.
	frontofficeRoles at: front_role name put: front_role.
	front_role addToCacheInAppName: frontApp1 applicationName.
	front_role := testRoot createNewOrGetExistingFrontOfficeRole: 'app1-front-role2-', index printString in: 'f-app1-', index printString.
	frontofficeRoles at: front_role name put: front_role.
	front_role addToCacheInAppName: frontApp1 applicationName.
	front_role := testRoot createNewOrGetExistingFrontOfficeRole: 'app2-front-role1-', index printString in: 'f-app2-', index printString.
	frontofficeRoles at: front_role name put: front_role.
	front_role addToCacheInAppName: frontApp2 applicationName.
	front_role := testRoot createNewOrGetExistingFrontOfficeRole: 'app2-front-role2-', index printString in: 'f-app2-', index printString.
	frontofficeRoles at: front_role name put: front_role.
	front_role addToCacheInAppName: frontApp2 applicationName.

	back_role := testRoot createNewOrGetExistingBackOfficeRole: 'app1-back-role1-', index printString in: 'b-app1-', index printString.
	backofficeRoles at: back_role name put: back_role.
	back_role addToCacheInAppName: backApp1 applicationName.
	back_role := testRoot createNewOrGetExistingBackOfficeRole: 'app1-back-role2-', index printString in: 'b-app1-', index printString.
	backofficeRoles at: back_role name put: back_role.
	back_role addToCacheInAppName: backApp1 applicationName.
	back_role := testRoot createNewOrGetExistingBackOfficeRole: 'app2-back-role1-', index printString in: 'b-app2-', index printString.
	backofficeRoles at: back_role name put: back_role.
	back_role addToCacheInAppName: backApp2 applicationName.
	back_role := testRoot createNewOrGetExistingBackOfficeRole: 'app2-back-role2-', index printString in: 'b-app2-', index printString.
	backofficeRoles at: back_role name put: back_role.
	back_role addToCacheInAppName: backApp2 applicationName.