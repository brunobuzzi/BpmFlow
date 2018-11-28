other
getEnvironmentNamed: aString ifNone: aBlock
	"The receivers answer <aBpmEnvironment> named <aString> if not exist evaluate the niladic block <aBlock>"

	^self cache detect: [:each | each name = aString] ifNone: aBlock