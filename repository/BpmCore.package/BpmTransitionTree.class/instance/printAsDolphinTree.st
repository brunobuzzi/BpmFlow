dolphin smalltalk
printAsDolphinTree
	"The receiver print <aString> with Dolphin Smalltalk code to be evaluated by a Dolphin Smalltalk Virtual Machine.
	This is only for development and testing purpose"
	| stream |

	stream := PrintStream on: String new.
	stream nextPutAll: '| tree | '.
	stream nextPutAll: 'tree := TreeModel withRoots: (OrderedCollection '.
	roots do: [:each | stream nextPutAll: 'with: ''', each printTransition, ''''].
	stream nextPutAll: ').'; cr.
	roots do: [:each | self printAsDolphinOn: stream node: each ].
	
	stream cr.
	stream nextPutAll: '(TreePresenter showOn: tree) view expandAll'. 
	^stream contents