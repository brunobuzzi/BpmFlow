performers
getPerfomerOrRoleName

	self hasPerformers ifFalse: [^roleName].

	^(self getCurrentRoleIfNone: [^roleName]) name