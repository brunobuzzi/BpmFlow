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

	sentMessages do: [:each | | topReceiver filteredReceiver |
		topReceiver := self getTopReceiverInMessage: each.
		filteredReceiver := topReceiver name first isUppercase 
		ifTrue: [topReceiver] "<topReceiver> is a class " 
		ifFalse: [self getTopReceiverInAssignment: (self getAssignmentOf: topReceiver)]. "<topReceiver> is a variable" 
		referencedSelectors at: filteredReceiver name ifAbsentPut: [Set new].
		(referencedSelectors at: filteredReceiver name) add: each selector.
	].

	^referencedSelectors