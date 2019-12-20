other
getParentOf: aBpmArtifactDefinition ifNone: aBlock
	"The receiver answer the first parent of artifact <aBpmArtifactDefinition> if there is no parent evaluate the niladic block <aBlock>"

	^executionPath getParentOf: aBpmArtifactDefinition ifNone: aBlock