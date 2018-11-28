other
setLoopTypeWithNode: xmlNode
	"The receiver set it's loop type from the xml node <xmlNode>
	Loop type: (none) (standart) (multi-instance)"
	| loopNode |

	loopNode := xmlNode findElementNamed: 'Loop'.
	loopNode ifNil: [^self].

	self startQuantity: ([Number fromString: (xmlNode attributeAt: 'StartQuantity')] on: Error do: [:ex | nil]);
		completionQuantity: ([Number fromString: (xmlNode attributeAt: 'CompletionQuantity')] on: Error do: [:ex | nil]).

	self loopType: (loopNode attributeAt: 'LoopType').

	self setLoopCondtionWithNode: xmlNode.