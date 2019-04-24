render transitions
collapseTitleFor: aBpmArtifactInstance

	((transitionsHeight includesKey: aBpmArtifactInstance) and: [(transitionsHeight at: aBpmArtifactInstance) = #expanded]) 
	ifFalse: [^'Expand' translateIn: self session].

	^'Collapse' translateIn: self session