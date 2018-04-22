execution
getRoleName
	"Answer the current role name of the receiver.
	This is used to do the lookup by role name in assignment matrix <BpmTasksHolderMatrix>"

	self hasPerformers ifFalse: [^roleName].

	^(self getCurrentRoleIfNone: [^roleName]) name