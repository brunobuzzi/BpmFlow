bpm roles
getRolesInAppName: appName
	"Answer a collection with all roles in <Application> named <appName>"

	^(self getApplicationNamed: appName ifNone: [^#()]) getAllRoles