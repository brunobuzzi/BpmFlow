render
renderItemDescriptionAditionalDataOn: html

	html span with: [html strong: ('Creator Name:' translateIn: self session)].
	html output: selectedLateralItem creatorName.

	html span with: [html strong: ('Creation Time:' translateIn: self session)].
	html output: selectedLateralItem createdTime printString.