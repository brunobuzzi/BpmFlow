other
printAllPossiblePath
	"The receiver print all possible path"
	| stream |

	stream := PrintStream on: String new.

	self getAllPossiblePath keysAndValuesDo: [:key :collection | 
		stream nextPutAll: ('[PATH START (', key printString, ') (s: ', collection size printString,')]'); cr.
		collection do: [:node | stream nextPutAll: node printTransition, String lf].
		stream cr; nextPutAll: '[PATH END]'; cr.
	].

	^stream contents