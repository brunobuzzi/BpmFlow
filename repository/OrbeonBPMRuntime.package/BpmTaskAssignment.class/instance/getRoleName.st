execution
getRoleName

	self hasPerformers ifFalse: [^roleName].

	^(self getNextRoleIfNone: [^roleName]) name