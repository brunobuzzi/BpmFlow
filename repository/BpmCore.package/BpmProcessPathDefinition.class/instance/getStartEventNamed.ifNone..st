get artifacts
getStartEventNamed: aString ifNone: aBlock
	"The receiver answer the start event <BpmStartEventDefinition> named <aString> if such event does not exist evaluate <aBlock> "

	(startEvent name = aString) ifFalse: [^aBlock value].

	^startEvent