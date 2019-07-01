roles
isGrantedRoleNamed: aString
	"Answer wheter or not the receiver has granted the role named <aString>"

	^roles anySatisfy: [:each | each name = aString]