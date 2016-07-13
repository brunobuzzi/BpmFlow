other
getAnyRoleNamed: aString
	"Answer the first role named <aString> "

	^self getAllRoles detect: [:each | each name = aString] ifNone: [nil]