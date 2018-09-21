other
renderItemDescriptionAditionalDataOn: html

	html span: [html strong: ('Last Update:' translateFor: self session user)].
	html output: selectedLateralItem printLastUpdate.