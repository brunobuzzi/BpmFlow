render transitions
renderTransitionFormDataOn: html for: aBpmArtifactInstance

	self renderFormDataOn: html for: aBpmArtifactInstance.

	self renderTransitionSummaryOn: html for: aBpmArtifactInstance.

	"this is used by backoffice users with <WABpmProcessRadarComposite>"
	areActionsAvailable ifFalse: [^aBpmArtifactInstance renderHtmlOn: html for: self].

	"(if the user that has taken <BpmTaskAssignment> must identical to the current user or <BpmTaskAssignment> is finished) in order to perform actions"
	((model user == self session user) or: [mainPanel modeIsFinishedTasks]) ifTrue: [self renderTransitionActionsOn: html for: aBpmArtifactInstance].