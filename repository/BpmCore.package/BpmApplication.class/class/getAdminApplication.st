other
getAdminApplication
	"Answer the name of the 'admins' Application"

	^self applicationNamed: self adminApplicationName ifNone: [nil]