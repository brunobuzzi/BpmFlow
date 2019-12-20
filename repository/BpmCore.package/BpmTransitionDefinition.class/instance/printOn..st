other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '[', name, '] {(', startArtifact printOnType, ')',startArtifact name, '} >> {(', endArtifact printOnType, ')', endArtifact name, '}'.