other
renderItemDescriptionSecondaryDataOn: html

	html span with: [html strong: ('Number of Processes Definition:' translateFor: self session user)].
	html output: selectedLateralItem getNumberOfProcessesDefinition printString.