other
getRoleNamed: roleName in: appName
	"Answer a proper instance of receiver's subclass for role named <roleName> in application named <appName>"
	| application |

	application := self defaultApplicationManagerClass applicationNamed: appName ifNone: [^nil].

	^application getFrontOfficeRoleNamed: roleName