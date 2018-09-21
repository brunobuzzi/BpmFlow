other
renderItemDescriptionSecondaryDataOn: html

	html span: [html strong: ('Creation Time:' translateFor: self session user)].
	html output: selectedLateralItem creationTime.

	html span: [html strong: ('Recursion:' translateFor: self session user)].
	html output: selectedLateralItem printRecursionDefinitionName.

	html span: [html strong: ('Is Active:' translateFor: self session user)].
	html output: selectedLateralItem isActive.

	html span: [html strong: ('Is Private:' translateFor: self session user)].
	html output: selectedLateralItem isPrivate.