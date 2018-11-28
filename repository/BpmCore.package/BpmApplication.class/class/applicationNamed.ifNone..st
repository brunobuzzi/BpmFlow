other
applicationNamed: aString ifNone: aBlock
	"Answer an OrbeonApplication or BpmApplication named <aString> if none evaluates the zero block argument <aBlock>"

	^self getBpmCache detect: [:each | each applicationName = aString] ifNone: aBlock