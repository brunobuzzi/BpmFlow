other
renderItemDescriptionAditionalDataOn: html

	html span: [html strong: ('Type:' translateFor: self session user)]. 
	html output: selectedLateralItem printType.