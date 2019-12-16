other
renderItemDescriptionSecondaryDataOn: html

	html span with: [html strong: ('Seaside Application Name:' translateIn: self session)].
	html output: self selectedLateralItem seasideApplicationName.

	html span with: [html strong: ('Internationalization Type:' translateIn: self session)].
	html output: self selectedLateralItem printInternationalizationType.