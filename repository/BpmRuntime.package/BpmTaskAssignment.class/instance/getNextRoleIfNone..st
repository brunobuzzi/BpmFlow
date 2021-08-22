performers
getNextRoleIfNone: aBlock

	task ifNil: [^aBlock value].

	^task getNextRoleIfNone: aBlock