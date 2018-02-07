other
collapseTitleFor: aBpmArtifactInstance

	((transitionsHeight includesKey: aBpmArtifactInstance) and: [(transitionsHeight at: aBpmArtifactInstance) = #expanded]) 
	ifFalse: [^'Expand' translateFor: self session user].

	^'Collapse' translateFor: self session user