other
printData
	| stream |

	stream := PrintStream on: String new.

	stream nextPutAll: (self startArtifactName, ' > ', self endArtifactName).

	^stream contents