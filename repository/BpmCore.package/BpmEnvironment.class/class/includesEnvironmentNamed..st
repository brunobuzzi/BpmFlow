other
includesEnvironmentNamed: aString
	"Answer whether or not the receivers's <Cache> includes <aBpmEnvironment> named <aString>"

	^self cache anySatisfy: [:each | each name = aString]