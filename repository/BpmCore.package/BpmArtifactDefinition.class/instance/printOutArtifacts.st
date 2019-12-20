other
printOutArtifacts
	| stream |

	outTransitions ifEmpty: [^''].

	stream := PrintStream on: String new.

	outTransitions do: [:each | stream nextPutAll: each printEndArtifactName, ' | '].

	^stream contents allButLast: 3