applications
applicationNamed: aString ifNone: aBlock
	"Answer <anOrbeonApplication> or <aBpmApplication> named <aString> if none evaluates the zero block argument <aBlock>"

	self cache do: [:each | (each applicationNamed: aString) ifNotNil: [:application | ^application]].

	^aBlock value