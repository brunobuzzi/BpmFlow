bpm roles
getBackOfficeRoleNamed: roleName in: appName
	"Answer a proper instance of receiver's subclass for role named <roleName> in application named <appName>"
	| application |

	application := self getApplicationNamed: appName ifNone: [^nil].

	^application getBackOfficeRoleNamed: roleName