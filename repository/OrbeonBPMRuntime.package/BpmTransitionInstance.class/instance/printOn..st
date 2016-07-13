other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '[', definition name, '] {(', startArtifact printOnType, ')',startArtifact name, '} >> {(', endArtifact printOnType, ')', endArtifact name, '}'.