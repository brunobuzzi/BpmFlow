other
getAdminApplication
	"Answer the name of the 'admins' Application"

	^self applicationNamed: self adminApplicationName ifNone: [NoApplicationException signal: 'There is no [admins] Application. This is a serious problem contact the System Adminstrator'  ]