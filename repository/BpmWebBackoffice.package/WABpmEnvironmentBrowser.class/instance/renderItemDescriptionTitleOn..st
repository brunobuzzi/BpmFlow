other
renderItemDescriptionTitleOn: html

	html output: ('Environment Name: [' translateFor: self session user) ,selectedLateralItem name, ']'.

	selectedLateralItem canDelete ifTrue: [self renderDeleteEnvironmentOn: html].
	self renderAddEnvironmentOn: html.
	self renderSetEnvironmentIconsAndAppsNamesOn: html.