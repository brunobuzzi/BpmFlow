other
printData
	| stream |

	stream := PrintStream on: String new.

	stream nextPutAll: (startNode getName, ' > ', endNode getName).

	^stream contents