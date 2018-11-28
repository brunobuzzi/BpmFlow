render
renderItemDescriptionAditionalDataOn: html

	html span with: [html strong: ('Creator Name:' translateFor: self session user)].
	html output: selectedLateralItem creatorName.

	html span with: [html strong: ('Creation Time:' translateFor: self session user)].
	html output: selectedLateralItem createdTime printString.