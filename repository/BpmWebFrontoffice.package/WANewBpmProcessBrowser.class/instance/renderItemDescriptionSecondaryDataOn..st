other
renderItemDescriptionSecondaryDataOn: html

	selectedLateralItem ifNil: [^self].

	html span with: [html strong: ('Version:' translateIn: self session)].
	html output: selectedLateralItem version.

	html span with: [html strong: ('Application:' translateIn: self session)].
	html output: selectedLateralItem applicationName.