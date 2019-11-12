render transitions
renderStandardLoopOn: html for: aBpmArtifactInstance

	aBpmArtifactInstance isDone ifTrue: [^self].

	aBpmArtifactInstance isCreated ifFalse: [^self].
	(aBpmArtifactInstance isGrantedUser: self session user) ifFalse: [^self].

	(aBpmArtifactInstance hasPerformers and: [aBpmArtifactInstance isFinishedByPerformers]) not ifFalse: [^self]. "issue #940 subtask 4) - only the last performer can loop the task"

	"the task <aBpmArtifactInstance> is different from the current selected assignment"
	(aBpmArtifactInstance == model task) ifFalse: [^self].

	(aBpmArtifactInstance canCloseAndSend or: [(aBpmArtifactInstance hasPerformers and: [aBpmArtifactInstance canCloseAndSendPerformer: self session user])])
		ifTrue: [self renderStandardLoopIconOn: html for: aBpmArtifactInstance]