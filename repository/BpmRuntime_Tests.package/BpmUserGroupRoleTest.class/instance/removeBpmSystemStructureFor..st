other
removeBpmSystemStructureFor: index
	| env app front_role back_role front_user back_user |

	env := self getEnvironmentNamed: 'env-', index printString .
	app := self getApplicationNamed: 'app-', index printString.
	front_role := self getFrontofficeRoleNamed: 'front-role-', index printString.
	back_role := self getBackofficeRoleNamed: 'back-role-', index printString.
	front_user := self getUserNamed: 'fuser-', index printString.
	back_user := self getUserNamed: 'buser-', index printString.

	front_role ungrantUser: front_user.
	back_role ungrantUser: back_user.
	env unregisterUser: front_user;
		unregisterUser: back_user;
		unregisterApplication: app. 

	front_user removeFromCache.
	back_user removeFromCache.
	front_role removeFromCache.
	back_role removeFromCache.
	app removeFromCache.
	env removeFromCache.