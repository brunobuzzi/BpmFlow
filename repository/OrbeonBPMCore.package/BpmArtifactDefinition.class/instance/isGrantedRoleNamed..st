other
isGrantedRoleNamed: aString

	^roles anySatisfy: [:each | each name = aString]