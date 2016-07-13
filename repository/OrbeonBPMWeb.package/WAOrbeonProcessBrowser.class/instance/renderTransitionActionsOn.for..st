process
renderTransitionActionsOn: html for: aBpmArtifactInstance

	aBpmArtifactInstance isTask ifFalse: [^self].

	aBpmArtifactInstance renderHtmlOn: html for: self.

	(aBpmArtifactInstance isSubprocess not and: [aBpmArtifactInstance isDone not])
		ifTrue: [self renderCloseAndSendFormOn: html for: aBpmArtifactInstance.].