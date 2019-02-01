subclass responsibility
renderItemDescriptionAditionalDataOn: html

	html span: [html strong: ('Created Time:' translateIn: self session)].
	html output: selectedLateralItem createdTime.
	html span: [html strong: ('Report Creator:' translateIn: self session)].
	html output: selectedLateralItem creatorName.
	html span: [html strong: ('Time to Build:' translateIn: self session)].
	html output: selectedLateralItem printSecondsToConstruct.