process
renderItemDescriptionSecondaryDataOn: html

	html span with: [html strong: ('Application:' translateFor: self session user)].
	html output: selectedLateralItem applicationName.
	html span with: [html strong: ('Process Id:' translateFor: self session user)].
	html output: selectedLateralItem processId.
	html span: [html strong: ('Version:' translateFor: self session user)]. 
	html output: selectedLateralItem version.
	html span: [html strong: ('Process State:' translateFor: self session user)].
	html output: (selectedLateralItem printProcessState translateFor: self session user).

	selectedLateralItem isWaitingEvent
	ifTrue: [html span: [html strong: ('Waiting Event:' translateFor: self session user)].
				html output: ('true' translateFor: self session user)].