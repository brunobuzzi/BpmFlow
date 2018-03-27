other
renderItemDescriptionSecondaryDataOn: html

	selectedLateralItem ifNil: [^self].

	html span with: [html strong: ('Version:' translateFor: self session user)].
	html output: selectedLateralItem version.

	html span with: [html strong: ('Application:' translateFor: self session user)].
	html output: selectedLateralItem applicationName.