lateral assignment
renderLateralItemDetailsOn: html for: aLateralItem
	| procIdString |

	procIdString := aLateralItem processId printString, ((aLateralItem user == self session user) ifFalse: [' (', aLateralItem getUsername, ')'] ifTrue: ['']).

	html strong with: [html output: procIdString].
	html strong with: [html output: aLateralItem printAssignmentDate].
	html strong with: [html output: aLateralItem printRunningArtifacts]