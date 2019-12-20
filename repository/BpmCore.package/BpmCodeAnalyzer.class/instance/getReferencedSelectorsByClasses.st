ast queries
getReferencedSelectorsByClasses
	"The receiver answer a dictionary where the key is the class name and the value is the referenced selector in <blockCode> instance variable"
	| treeSearcher matchesNodes referencedSelectors |

	referencedSelectors := Dictionary new.
	treeSearcher := RBParseTreeSearcher new.
	treeSearcher 
		matches: '`{:node | node isMessage and: [node receiver isVariable and: [node receiver name first isUppercase]]}' 
		do: [:aNode :answer | answer add: aNode; yourself].

	matchesNodes := treeSearcher executeTree: parsedNode initialAnswer: OrderedCollection new.

	matchesNodes do: [:each | referencedSelectors at: each receiver name put: each selector].

	^referencedSelectors