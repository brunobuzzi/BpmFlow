svg generator
generateHeaderTranslationForProcess: processName reader: xpdlReader
	"in one XPDL string can be more than one process definition --> <aBpmDefinition> is filtered here"
	| pool |

	pool := (xpdlReader getAllWorkflows detect: [:each | each getName = processName] ifNone: [^#()]) parentPool.

	^OrderedCollection with: ('transform' -> ('translate(0, -', (pool getYcoordinate - 30) printString,')'))