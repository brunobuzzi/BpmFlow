other
printCodeWarnings
	| stream |

	stream := PrintStream on: String new.

	codeWarnings do: [:each | stream nextPutAll: each; nextPutAll: String lf].

	^stream contents