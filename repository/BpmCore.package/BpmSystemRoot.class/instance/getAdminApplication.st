applications
getAdminApplication
	"Answer the application named 'admins' "

	^self getAdminsEnvironment 
				applicationNamed: self adminsApplicationName 
				ifNone: [NoApplicationException signal: 'There is no [admins] Application. This is a serious problem contact the System Adminstrator']