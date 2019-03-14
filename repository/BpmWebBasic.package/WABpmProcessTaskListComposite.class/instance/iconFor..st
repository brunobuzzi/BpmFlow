other
iconFor: aBpmArtifactInstance

	aBpmArtifactInstance isCreated ifFalse: [^#pageprocess32Png].

	(aBpmArtifactInstance hasPerformers and: [aBpmArtifactInstance innerTaskHasBeenFinalizedBy: self session user])
	ifTrue: [^#processacceptPng].

	aBpmArtifactInstance isDone ifTrue: [^#processacceptPng].

	aBpmArtifactInstance isProcessing ifTrue: [^#documentediticonPng].
"	aBpmArtifactInstance isPaused ifTrue: [^#stopwatchpausePng].
	aBpmArtifactInstance isDelayed ifTrue: [^#clockPng].
	aBpmArtifactInstance isPending ifTrue: [^#aquastrippedfolderclockPng]."

	^#documentediticonPng