events
getParentDefinitionOf: aBpmArtifactDefinition ifNone: aBlock
	"The receiver answer the first parent of artifact <aBpmArtifactDefinition> if there is no parent evaluate the niladic block <aBlock>"

	^definition getParentOf: aBpmArtifactDefinition ifNone: aBlock