other
getNextTransitionDefinitionForArtifactNamed: aString ifNone: aBlock
	"The receiver answer the next transition definition that goes to artifact named <aString>"

	^definition getNextTransitionForArtifactNamed: aString ifNone: aBlock