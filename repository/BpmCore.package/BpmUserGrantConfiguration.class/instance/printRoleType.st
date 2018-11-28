other
printRoleType

	^(role class == BpmBackofficeRole) ifTrue: ['B'] ifFalse: ['F']