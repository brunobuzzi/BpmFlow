external components
iconFor: aBpmArtifactInstance

	aBpmArtifactInstance isCreated ifFalse: [^#pageprocess32Png].

	(aBpmArtifactInstance hasPerformers and: [aBpmArtifactInstance innerTaskHasBeenFinalizedBy: self session user])
	ifTrue: [^#processacceptPng].

	aBpmArtifactInstance isDone ifTrue: [^#processacceptPng].

	^(self canEditTask: aBpmArtifactInstance)
	ifTrue: [#documentediticonPng]
	ifFalse: [#processacceptPng]