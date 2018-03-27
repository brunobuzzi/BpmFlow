process
renderTransitionFormDataOn: html for: aBpmArtifactInstance

	self renderFormDataOn: html for: aBpmArtifactInstance.

	self renderTransitionSummaryOn: html for: aBpmArtifactInstance.

	"(if the user that has taken <BpmTaskAssignment> must identical to the current user or <BpmTaskAssignment> is finished) in order to perform actions"
	((selectedLateralItem user == self session user) or: [self modeIsFinishedTasks]) ifTrue: [self renderTransitionActionsOn: html for: aBpmArtifactInstance].