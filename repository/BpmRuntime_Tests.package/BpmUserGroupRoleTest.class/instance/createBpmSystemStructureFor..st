other
createBpmSystemStructureFor: index
	| env app front_role back_role front_user back_user |

	env := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-', index printString.
	environments at: 'env-', index printString put: env.
	app := self defaultApplicationManagerClass getExistingApplicationOrCreateNewNamed: 'app-', index printString.
	applications at: 'app-', index printString put: app.
	env registerApplication: app.

	front_user := self defaultBpmUserClass getExistingOrNewUserNamed: 'fuser-', index printString.
	users at: 'fuser-', index printString put: front_user.	
	env registerUser: front_user.

	back_user := self defaultBpmUserClass getExistingOrNewUserNamed: 'buser-', index printString.
	users at: 'buser-', index printString put: back_user.
	env registerUser: back_user.

	front_role := self defaultFrontOfficeRoleClass createNewOrGetExisting: 'front-role-', index printString in: 'app-', index printString.
	frontofficeRoles at: front_role name put: front_role.
	back_role := self defaultFrontOfficeRoleClass createNewOrGetExisting: 'back-role-', index printString in: 'app-', index printString.
	backofficeRoles at: back_role name put: back_role.

	front_role grantUser: front_user.
	back_role grantUser: back_user.