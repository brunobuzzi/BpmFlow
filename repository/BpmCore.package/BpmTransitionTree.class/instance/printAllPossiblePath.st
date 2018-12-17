other
printAllPossiblePath
	| stream |

	stream := PrintStream on: String new.

	self getAllPossiblePath keysAndValuesDo: [:key :collection | 
		stream nextPutAll: ('[PATH START (', key printString, ') (s: ', collection size printString,')]'); cr.
		collection do: [:node | stream nextPutAll: node printTransition].
		stream cr; nextPutAll: '[PATH END]'; cr.
	].

	^stream contents