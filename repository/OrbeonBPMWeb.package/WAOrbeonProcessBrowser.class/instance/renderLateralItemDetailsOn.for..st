lateral assignment
renderLateralItemDetailsOn: html for: aLateralItem

	html strong with: [html output: aLateralItem processId].
	html strong with: [html output: aLateralItem printAssignmentDate].
	html strong with: [html output: aLateralItem printRunningArtifacts]