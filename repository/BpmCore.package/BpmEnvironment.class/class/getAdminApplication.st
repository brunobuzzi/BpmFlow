applications
getAdminApplication
	"Answer the application named 'admins' "

	^self getAdminsEnvironment 
				applicationNamed: self defaultApplicationManagerClass adminApplicationName 
				ifNone: [NoApplicationException signal: 'There is no [admins] Application. This is a serious problem contact the System Adminstrator']