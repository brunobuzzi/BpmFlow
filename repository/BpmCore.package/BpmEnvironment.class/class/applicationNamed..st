applications
applicationNamed: aString
	"Answer <anOrbeonApplication> or <aBpmApplication> named <aString> if none answer <nil>"

	^self applicationNamed: aString ifNone: []