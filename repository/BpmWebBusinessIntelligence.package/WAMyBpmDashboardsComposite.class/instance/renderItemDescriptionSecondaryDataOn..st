other
renderItemDescriptionSecondaryDataOn: html

	html span: [html strong: ('Creation Time:' translateIn: self session)].
	html output: selectedLateralItem creationTime.

	html span: [html strong: ('Is Active:' translateIn: self session)].
	html output: selectedLateralItem isActive.

	html span: [html strong: ('Is Private:' translateIn: self session)].
	html output: selectedLateralItem isPrivate.