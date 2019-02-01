other
renderItemDescriptionAditionalDataOn: html

	html span: [html strong: ('Last Update:' translateIn: self session)].
	html output: selectedLateralItem printLastUpdate.