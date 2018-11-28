events
getEventsNamed: aString ifNone: aBlock
	"The receiver answer a collection of <aBpmEventInstance> named <aString> if there is none event with that name evaluate zero argument block <aBlock>"

	^intermediateEvents at: aString ifAbsent: aBlock