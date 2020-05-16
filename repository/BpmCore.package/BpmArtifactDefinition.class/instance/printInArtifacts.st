other
printInArtifacts
	| stream |

	inTransitions ifEmpty: [^''].

	stream := PrintStream on: String new.

	inTransitions do: [:each | stream nextPutAll: each printStartArtifactName, ' | '].

	^stream contents allButLast: 3