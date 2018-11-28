roles
includesRoleNamed: aString
	"Answer whether or not the receiver includes the role named <aString>"

	^roles anySatisfy: [:each | each name = aString]