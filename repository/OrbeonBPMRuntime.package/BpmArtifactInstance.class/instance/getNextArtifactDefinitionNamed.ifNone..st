other
getNextArtifactDefinitionNamed: aString ifNone: aBlock
	"The receiver answer the next artifact definition named <aString>"

	^definition getNextArtifactNamed: aString ifNone: aBlock