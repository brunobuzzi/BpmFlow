other
getRolsInAppName: appName
	"Answer a collection with all roles for application named <appName> (BpmApplication or OrbeonApplication)"
	| application |

	application := self defaultApplicationManagerClass applicationNamed: appName ifNone: [NoAppNameException signal: 'No Application named [', appName, ']'].

	^((self getAllRolesIn: application bpmEnvironment) select: [:each | each getApplicationName = appName]) asOrderedCollection