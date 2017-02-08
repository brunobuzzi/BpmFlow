other
renderItemDescriptionAditionalDataOn: html

	html span: [html strong: ('Calendar Name:' translateFor: self session user)].
	html output: selectedLateralItem name.