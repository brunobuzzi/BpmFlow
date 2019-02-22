other
renderItemDescriptionSecondaryDataOn: html

	html span with: [html strong: ('Seaside Application Name:' translateIn: self session)].
	html output: self selectedLateralItem seasideApplicationName.