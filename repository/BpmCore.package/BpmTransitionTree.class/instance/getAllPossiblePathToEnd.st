visiting
getAllPossiblePathToEnd
	"The receiver answer <aCollection> wiht all possible path of the visited bpm process. Each path is a collection of nodes (transitions).
	Basically for each leaf node goes up to the roots and store the complete path."

	^self getAllPossiblePath select: [:pathCollection | | lastElement |
			lastElement := pathCollection last.
			lastElement transition endArtifact isEndEvent
	]