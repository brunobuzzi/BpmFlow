other
switchOpenCloseTransition: aBpmArtifactInstance

	((transitionsHeight includesKey: aBpmArtifactInstance) and: [(transitionsHeight at: aBpmArtifactInstance) = #expanded])
	ifTrue: [transitionsHeight at: aBpmArtifactInstance put: #collapsed]
	ifFalse: [transitionsHeight at: aBpmArtifactInstance put: #expanded]