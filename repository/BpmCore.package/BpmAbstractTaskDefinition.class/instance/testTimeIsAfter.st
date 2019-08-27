loop
testTimeIsAfter
	"Answer whether or not the receiver test time is before execution"

	^self hasLoop and: [loop testTimeIsAfter]