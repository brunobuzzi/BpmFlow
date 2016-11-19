subclass responsibility
renderItemDescriptionSecondaryDataOn: html

"
	html span with: [html strong: ('Process Id:' translateFor: self session user)].
	html output: selectedLateralItem processId.
	html span with: [html strong: ('Version:' translateFor: self session user)].
	html output: selectedLateralItem version.
	html span with: [html strong: ('Application:' translateFor: self session user)].
	html output: selectedLateralItem applicationName.
	html span with: [html strong: ('Parent Process:' translateFor: self session user)].
	html output: selectedLateralItem parentProcessName.
"