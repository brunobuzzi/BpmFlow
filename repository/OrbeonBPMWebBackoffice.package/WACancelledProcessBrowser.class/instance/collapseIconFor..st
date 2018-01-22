other
collapseIconFor: aBpmArtifactInstance

	((transitionsHeight includesKey: aBpmArtifactInstance) and: [(transitionsHeight at: aBpmArtifactInstance) = #collapsed])
	ifTrue: [^#circledown16Png].

	^#circleup16Png