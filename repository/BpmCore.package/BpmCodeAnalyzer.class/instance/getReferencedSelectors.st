ast queries
getReferencedSelectors
	"The receiver answer a collection of string with all selectors referenced in <blockCode> instance variable"

	"^parser allChildren select: [:each | each isMessage] thenCollect: [:each | each selector] "
	| treeSearcher |

	treeSearcher := RBParseTreeSearcher new.
	treeSearcher 
		matches: '`{:node | node isMessage}' 
		do: [:aNode :answer | answer add: aNode selector; yourself].

	^treeSearcher executeTree: parsedNode initialAnswer: OrderedCollection new