environments
getEnvironmentNamed: aString ifNone: aBlock
	"The receivers answer <aBpmEnvironment> named <aString> if not exist evaluate the niladic block <aBlock>"

	^environments at: aString ifAbsent: aBlock