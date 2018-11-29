other
hasScriptNamed: aString

	^self getScriptNodes anySatisfy: [:each | each getName = aString]