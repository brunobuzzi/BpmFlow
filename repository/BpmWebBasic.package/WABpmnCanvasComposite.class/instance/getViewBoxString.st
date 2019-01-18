svg properties
getViewBoxString
	| stream |

	stream := PrintStream on: String new.

	viewBoxArray do: [:each | stream nextPutAll: each printString, ' '].

	^stream contents