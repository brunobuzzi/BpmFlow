code analyzer
checkReceiverVariableMessagesRule
	"All messages sent to Block's argument MUST be NOT understand by <BpmProcessInstance> and <OrbeonFormInstance>.
	Inside the block messages are sent only to fields of <OrbeonFormInstance> or <BpmProcessInstance> and this messages are dispatched using #doesNotUnderstand:. 
	So inside the block message to the argument MUST fail "
	| atomicMessages notPerfomMessages perfomMessages |

	"<atomicMessages> MUST have the receiver equal to Block argument"
	atomicMessages := parser allChildren select: [:each | each isMessage and: [each receiver isVariable]].

	notPerfomMessages := atomicMessages select: [:each | (each selector findString: #perform:) = 0]. "not perform messages"
	perfomMessages := atomicMessages select: [:each | (each selector findString: #perform:) ~= 0]. "perform messages"

	(notPerfomMessages select: [:each | 
		(self getOrbeonFormInstanceClassOrNil 
		ifNotNil: [:value | self isInvalidSelector: each selector for: value] ifNil: [false]) 
		or: [self isInvalidSelector: each selector for: BpmProcessInstance]]) 
			do: [:each | self addBlockWarning: 'Valid message [', each selector,'] is sent to Form or Process.'].

	"Check form #perform: with more that one argument, NOT allowed only a string with a field name is allowed for message #perform: "
	(perfomMessages select: [:each | each arguments size > 1]) do: [:each | self addBlockWarning: 'Perform message sent with more than one argument.'].

	"Check for suspicious string as argument of #perform: message, more than one string (subString: space) as argument of #perform: NOT allowed"
	(perfomMessages select: [:each | (each arguments size = 1) and: [each arguments last token isLiteralToken and: [(each arguments last value subStrings: ' ') size > 1]]]) do: [:each | self addBlockWarning: 'Suspicious string inside #perform: message']