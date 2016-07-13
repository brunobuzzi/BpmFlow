other
getRolsInAppName: appName
	"Answer a collection with all roles for application named <appName> (BpmApplication or OrbeonApplication)"

	^(self getAllRoles select: [:each | each getApplicationName = appName]) asOrderedCollection