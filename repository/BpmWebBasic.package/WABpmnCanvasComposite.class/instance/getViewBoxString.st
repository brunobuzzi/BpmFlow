svg properties
getViewBoxString
	| stream |

	isScaledByParent ifTrue: [^'0 0 900 900'].

	stream := PrintStream on: String new.

	viewBoxArray do: [:each | stream nextPutAll: each printString, ' '].

	^stream contents