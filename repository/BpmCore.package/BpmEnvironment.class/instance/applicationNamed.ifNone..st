applications
applicationNamed: aString ifNone: aBlock
	"The receiver answer <aBpmApplication> or <aOrbeonApplication> named <aString> if none evaluate the niladic block <aBlock>"

	^applications detect: [:each | each applicationName = aString] ifNone: aBlock