other
attachedEventNamed: aString ifNone: aBlock
	"The receiver answer the attached event <aBpmEventDefinition> named <aString>"

	^attachedEvents detect: [:each | each name = aString] ifNone: aBlock