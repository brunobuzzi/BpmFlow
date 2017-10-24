running
getLastEventNamed: aString ifNone: aBlock
	"The receiver answer the last <aBpmEventInstance> named <aString> if there is none event with that name evaluate zero argument block <aBlock>"

	(intermediateEvents includesKey: aString) ifFalse: [^aBlock value].

	^(intermediateEvents at: aString) 
		ifNotEmpty: [:collection | collection last]
		ifEmpty: aBlock