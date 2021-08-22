other
printOn: aStream
	| sArtifactName eArtifactName |

	super printOn: aStream.

	sArtifactName := startArtifact ifNil: [''] ifNotNil: ['{(', startArtifact printOnType, ')',startArtifact name, '}'].
	eArtifactName := endArtifact ifNil: [''] ifNotNil: ['{(', endArtifact printOnType, ')', endArtifact name, '}'].
 
	aStream nextPutAll: '[', definition name, '] ', sArtifactName, ' >> ', eArtifactName