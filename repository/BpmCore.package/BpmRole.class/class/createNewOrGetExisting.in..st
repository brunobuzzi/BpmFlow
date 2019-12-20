other
createNewOrGetExisting: roleName in: appName
	"The receiver creates a new <BpmRole> named <roleName> or get the existing role from OrbeonApplication <appName>"

	^(self getRoleNamed: roleName in: appName)
		ifNotNil: [:bpmRole | bpmRole]
		ifNil: [(self newNamed: roleName) addToCacheInAppName: appName].