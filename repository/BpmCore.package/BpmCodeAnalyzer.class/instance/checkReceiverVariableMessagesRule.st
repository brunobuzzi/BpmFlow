code analyzer
checkReceiverVariableMessagesRule
	"All messages sent to Block's argument MUST NOT be understood by <BpmProcessInstance> and <OrbeonFormInstance>.
	Inside the block messages are sent only to fields of <OrbeonFormInstance> or <BpmProcessInstance> and these messages are dispatched using #doesNotUnderstand:. 
	So inside the block message to the argument MUST fail "
	| notPerfomMessages perfomMessages treeSearcher |

	treeSearcher := RBParseTreeSearcher new.
	treeSearcher 
		matches: '``@receiver perform: `@arg1' 
		do: [:aNode :answer | answer add: aNode; yourself].
	perfomMessages := treeSearcher executeTree: parsedNode initialAnswer: OrderedCollection new.

	treeSearcher := RBParseTreeSearcher new.
	treeSearcher 
		matches: '``@receiver `@methodName: ``@args' 
		do: [:aNode :answer | answer add: aNode; yourself].
	notPerfomMessages := (treeSearcher executeTree: parsedNode initialAnswer: OrderedCollection new) select: [:each | each selector ~= #perform:].
	notPerfomMessages := notPerfomMessages select: [:node |  node isMessage and: [node receiver isVariable and:[node receiver name = parsedNode arguments last name]]].

	(notPerfomMessages select: [:each | 
		(self getOrbeonFormInstanceClassOrNil 
		ifNotNil: [:value | self isInvalidSelector: each selector for: value] ifNil: [false]) 
		or: [self isInvalidSelector: each selector for: BpmProcessInstance]]) 
			do: [:each | self addBlockWarning: 'Invalid message [', each selector,'] is sent to Form or Process.'].

	"Check form #perform: with more that one argument, NOT allowed only a string with a field name is allowed for message #perform: "
	(perfomMessages select: [:each | each arguments size > 1]) do: [:each | self addBlockWarning: 'Perform message sent with more than one argument.'].

	"Check for suspicious string as argument of #perform: message, more than one string (subString: space) as argument of #perform: NOT allowed"
	(perfomMessages select: [:each | (each arguments size = 1) and: [each arguments last token isLiteralToken and: [(each arguments last value subStrings: ' ') size > 1]]]) 
	do: [:each | self addBlockWarning: 'Suspicious string inside #perform: message'].