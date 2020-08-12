other
getNextArtifactNamed: aString ifNone: aBlock
	"The receiver answer the next artifact definition named <aString>"

	^(outTransitions detect: [:transition | transition endArtifactName = aString] ifNone: [^aBlock value]) endArtifact