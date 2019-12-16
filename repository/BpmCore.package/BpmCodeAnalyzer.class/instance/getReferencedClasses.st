ast queries
getReferencedClasses
	"The receiver answer a collection of string with all classes names referenced in <blockCode> instance variable"
	| treeSearcher |

	treeSearcher := RBParseTreeSearcher new.
	treeSearcher 
		matches: '`{:node | node isMessage and: [node receiver isVariable and: [node receiver name first isUppercase]]}' 
		do: [:aNode :answer | answer add: aNode receiver name; yourself].

	^treeSearcher executeTree: parser initialAnswer: OrderedCollection new