get artifacts
getParentOf: aBpmArtifactDefinition ifNone: aBlock
	"The receiver answer the first parent of artifact <aBpmArtifactDefinition> if there is no parent evaluate the niladic block <aBlock>"

	^(transitions detect: [:each | each endArtifact == aBpmArtifactDefinition] ifNone: [^aBlock value]) startArtifact