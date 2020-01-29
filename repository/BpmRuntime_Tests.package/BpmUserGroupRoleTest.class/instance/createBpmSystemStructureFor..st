other
createBpmSystemStructureFor: index
	"The receiver create the basic structure to run the tests for iteration <index>"
	| env app front_role back_role front_user back_user |

	"1) create the environment and application "
	env := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-', index printString.
	environments at: 'env-', index printString put: env.
	app := self defaultApplicationManagerClass getExistingApplicationOrCreateNewNamed: 'app-', index printString.
	applications at: 'app-', index printString put: app.
	env registerApplication: app. "register the application in the environment"

	"2) create the user and register it in the environment"
	front_user := self defaultBpmUserClass getExistingOrNewUserNamed: 'fuser-', index printString.
	users at: 'fuser-', index printString put: front_user.	
	env registerUser: front_user.

	"3) create the user and register it in the environment"
	back_user := self defaultBpmUserClass getExistingOrNewUserNamed: 'buser-', index printString.
	users at: 'buser-', index printString put: back_user.
	env registerUser: back_user.

	"4) create a backoffice and frontoffice roles in the application"
	front_role := self defaultFrontOfficeRoleClass createNewOrGetExisting: 'front-role-', index printString in: 'app-', index printString.
	frontofficeRoles at: front_role name put: front_role.
	back_role := self defaultBackOfficeRoleClass createNewOrGetExisting: 'back-role-', index printString in: 'app-', index printString.
	backofficeRoles at: back_role name put: back_role.

	"5) grant each user with one role each"
	front_role grantUser: front_user.
	back_role grantUser: back_user.