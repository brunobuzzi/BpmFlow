render
renderItemDescriptionAditionalDataOn: html

	html span: [html strong: ('Calendar Name:' translateIn: self session)].
	html output: selectedLateralItem name.