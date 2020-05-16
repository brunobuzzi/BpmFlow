users
unregisterUserGroup: aBpmUserGroup
	"The receiver unregister the user group <aBpmUserGroup>"

	aBpmUserGroup environment: nil.
 
	userGroups removeKey: aBpmUserGroup name ifAbsent: [^ImproperBpmOperationException signal: 'User Group [', aBpmUserGroup username , '] is not present in this Environment'].

	^aBpmUserGroup removeAllUsersAndRoles