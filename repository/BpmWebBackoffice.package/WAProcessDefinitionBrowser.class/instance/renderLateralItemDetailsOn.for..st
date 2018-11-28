lateral process list
renderLateralItemDetailsOn: html for: aLateralItem

	html strong with: [html output: aLateralItem processId].
	html strong with: [html output: aLateralItem version].
	html strong with: [html output: aLateralItem applicationName].