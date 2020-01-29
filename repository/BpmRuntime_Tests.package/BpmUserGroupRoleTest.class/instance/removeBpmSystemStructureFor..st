other
removeBpmSystemStructureFor: index
	"The receiver remove all created structures from the system"
	| env app front_role back_role front_user back_user |

	env := self getEnvironmentNamed: 'env-', index printString .
	app := self getApplicationNamed: 'app-', index printString.
	front_role := self getFrontofficeRoleNamed: 'front-role-', index printString.
	back_role := self getBackofficeRoleNamed: 'back-role-', index printString.
	front_user := self getUserNamed: 'fuser-', index printString.
	back_user := self getUserNamed: 'buser-', index printString.

	front_role ungrantUser: front_user. "ungrant user from the role"
	back_role ungrantUser: back_user. "ungrant users from the role"
	env unregisterUser: front_user; "unregister user from environment"
		unregisterUser: back_user; "unregister user from environment"
		unregisterApplication: app.  "unregister application from environment"

	front_user removeFromCache. "remove from the system"
	back_user removeFromCache. "remove from the system"
	front_role removeFromCache. "remove from the system"
	back_role removeFromCache. "remove from the system"
	app removeFromCache. "remove from the system"
	env removeFromCache. "remove from the system"