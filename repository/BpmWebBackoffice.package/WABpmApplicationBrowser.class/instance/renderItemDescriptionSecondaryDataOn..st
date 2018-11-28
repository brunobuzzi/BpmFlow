other
renderItemDescriptionSecondaryDataOn: html

	html span with: [html strong: ('Environment:' translateFor: self session user)].
	html output: self selectedLateralItem bpmEnvironment name.