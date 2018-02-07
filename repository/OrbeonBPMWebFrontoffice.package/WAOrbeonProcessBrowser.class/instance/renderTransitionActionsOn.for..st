process
renderTransitionActionsOn: html for: aBpmArtifactInstance

	aBpmArtifactInstance isTask ifFalse: [^self].

	
	aBpmArtifactInstance processIsRunning "if the BpmProcess has been paused or aborted --> no link to the task"
	ifTrue: [
		aBpmArtifactInstance renderHtmlOn: html for: self. "double dispatching to render an Orbeon Link or a Seaside Component"

		(aBpmArtifactInstance isSubprocess not and: [aBpmArtifactInstance isDone not]) ifTrue: [self renderCloseAndSendFormOn: html for: aBpmArtifactInstance.].
	]