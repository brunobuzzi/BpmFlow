applications
applicationNamed: aString
	"The receiver answer <aBpmApplication> or <aOrbeonApplication> named <aString> if none answer <nil>"

	^self applicationNamed: aString ifNone: []