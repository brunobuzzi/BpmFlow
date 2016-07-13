other
getRoleNamed: roleName in: appName
	"Answer a proper instance of receiver's subclass for role named <roleName> in application named <appName>"

	(self cache includesKey: appName) ifFalse: [^nil].

	^(self cache at: appName) detect: [:each | each name = roleName] ifNone: [nil]