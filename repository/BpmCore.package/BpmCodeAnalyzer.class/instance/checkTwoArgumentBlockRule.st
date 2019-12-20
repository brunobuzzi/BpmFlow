code analyzer
checkTwoArgumentBlockRule
	"Receiver's block must be a TWO argument block."
	| treeSearcher resultNodes |

	treeSearcher := RBParseTreeSearcher new.
	treeSearcher 
		matches: '[:`var1 :`var2 | | `@temps |  ``@.Stmts.]'
		do: [:aNode :answer | answer add: aNode; yourself].

	resultNodes := treeSearcher executeTree: parsedNode initialAnswer: OrderedCollection new.

	resultNodes ifNotEmpty: [^self]. "the block has one argument"

	^self addBlockWarning: 'Block must have two argument'