other
printData
	| stream |

	stream := PrintStream on: String new.

	stream nextPutAll: (startArtifact name, ' > ', endArtifact name), String lf.

	^stream contents