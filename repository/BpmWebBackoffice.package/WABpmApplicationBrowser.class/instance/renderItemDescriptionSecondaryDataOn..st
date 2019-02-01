other
renderItemDescriptionSecondaryDataOn: html

	html span with: [html strong: ('Environment:' translateIn: self session)].
	html output: self selectedLateralItem bpmEnvironment name.