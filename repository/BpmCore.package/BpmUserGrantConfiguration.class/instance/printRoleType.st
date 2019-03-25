other
printRoleType

	^(role class == self defaultBackOfficeRoleClass) ifTrue: ['B'] ifFalse: ['F']