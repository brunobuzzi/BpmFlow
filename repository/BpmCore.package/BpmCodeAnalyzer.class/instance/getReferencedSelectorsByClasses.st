ast queries
getReferencedSelectorsByClasses
	"The receiver answer a dictionary where the key is the class name and the value is the referenced selector in <blockCode> instance variable"
	| treeSearcher referencedSelectors sentMessages |

	referencedSelectors := Dictionary new.

	treeSearcher := RBParseTreeSearcher new.
	treeSearcher 
		matches: '``@receiver `@methodName: ``@args' 
		do: [:aNode :answer | answer add: aNode; yourself].

	sentMessages := (treeSearcher executeTree: parsedNode initialAnswer: Set new) asOrderedCollection.

	^sentMessages