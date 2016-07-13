other
getAnyObjectNamed: aString ifNone: aBlock
	"Answer any subcomponent object in the receiver collection <xpdlObjects> with name <aString> if none evaluate the non argument block <aBlock>"

	^xpdlObjects detect: [:each | each getName = aString] ifNone: aBlock