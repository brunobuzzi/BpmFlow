render
renderItemDescriptionSecondaryDataOn: html

	html span with: [html strong: ('Application:' translateIn: self session)].
	html output: selectedLateralItem applicationName.
	html span with: [html strong: ('Process Id:' translateIn: self session)].
	html output: selectedLateralItem processId.
	html span: [html strong: ('Version:' translateIn: self session)]. 
	html output: selectedLateralItem version.
	html span: [html strong: ('Process State:' translateIn: self session)].
	html output: (selectedLateralItem printProcessState translateIn: self session).