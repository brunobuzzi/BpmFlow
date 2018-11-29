other
hasSubProcessTaskNamed: aString

	^self getSubProcessNodes anySatisfy: [:each | each getName = aString]