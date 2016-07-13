performers
getCurrentRoleIfNone: aBlock

	task ifNil: [^aBlock value].

	^task getCurrentRoleIfNone: aBlock