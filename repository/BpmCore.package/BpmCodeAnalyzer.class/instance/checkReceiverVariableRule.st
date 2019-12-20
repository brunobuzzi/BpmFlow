code analyzer
checkReceiverVariableRule
	"Check that all messages sent to variables different from block argument are included in #getBasicClasses collection and the selector is included in #getBasicSelectorsForBasicClasses.
	If a message is sent to a <variable> and this <variable> is not the block argument then then both must included in #getBasicClasses and #getBasicSelectorsForBasicClasses"
	| argumentName treeSearcher sentMessages |

	parsedNode arguments ifEmpty: [^self].
	argumentName := parsedNode arguments last name. "the name of the Block argument ('each', 'proc' or whatever)"
	treeSearcher := RBParseTreeSearcher new.
	treeSearcher 
		matches: '``@receiver `@methodName: ``@args' 
		do: [:aNode :answer | answer add: aNode; yourself].
	sentMessages := treeSearcher executeTree: parsedNode initialAnswer: OrderedCollection new.
	sentMessages := sentMessages select: [:node | node isMessage and: [node receiver isVariable and:[node receiver name ~= argumentName]]].

	"1- sending message to different to basic objects ? (Time/Date/TimeStamp)? "
	"2- message selector different to allowed basic selectors ?"
	(sentMessages reject: [:each | (self getBasicClasses includes: each receiver name) and: [self getBasicSelectorsForBasicClasses includes: each selector]]) 
		do: [:each | self addBlockWarning: 'Message is sent to a forbidden variable [', each receiver name, '] or it is sent to a forbidden selector [', each selector, '].' ].