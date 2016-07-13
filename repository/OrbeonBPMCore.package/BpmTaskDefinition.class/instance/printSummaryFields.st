other
printSummaryFields
	| stream contents |

	stream := PrintStream on: String new.

	self getComponentClass summaryFields do: [:each | stream nextPutAll: each, ', '].

	contents := stream contents.

	^(contents size = 2) ifTrue: ["empty" ''] ifFalse: [contents allButLast: 2] "removing the last -', '-"