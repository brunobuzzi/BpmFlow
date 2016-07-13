process
renderTransitionFormDataOn: html for: aBpmArtifactInstance

	self renderFormDataOn: html for: aBpmArtifactInstance.

	self renderTransitionSummaryOn: html for: aBpmArtifactInstance.
	self renderTransitionActionsOn: html for: aBpmArtifactInstance.