other
renderItemDescriptionTitleOn: html

	html output:  selectedLateralItem name.

	selectedLateralItem canDelete ifTrue: [self renderDeleteEnvironmentOn: html].
	self renderAddEnvironmentOn: html.