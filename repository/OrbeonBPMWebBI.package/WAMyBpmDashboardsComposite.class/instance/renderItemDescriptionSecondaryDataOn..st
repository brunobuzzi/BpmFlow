other
renderItemDescriptionSecondaryDataOn: html

	html span: [html strong: ('Creation Time:' translateFor: self session user)].
	html output: selectedLateralItem creationTime.

	html span: [html strong: ('Recursion:' translateFor: self session user)].
	html output: selectedLateralItem printRecursionDefinitionName.