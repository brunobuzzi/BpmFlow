code analyzer
isInvalidSelector: selector for: anObject
	"Answer whether or not the selector <selector> is valid message to sent to object <anObject>"

	^(self getAllowedSelectorsToBlockArgument includes: selector) not and:[anObject canUnderstand: selector]