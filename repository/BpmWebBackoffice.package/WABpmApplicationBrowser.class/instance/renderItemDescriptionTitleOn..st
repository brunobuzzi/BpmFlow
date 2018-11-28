other
renderItemDescriptionTitleOn: html

	html output:  selectedLateralItem applicationName.

	selectedLateralItem canDelete ifTrue: [self renderDeleteApplicationOn: html].
	self renderAddApplicationOn: html.