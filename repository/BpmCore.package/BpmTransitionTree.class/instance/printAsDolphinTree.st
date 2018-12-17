other
printAsDolphinTree
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