other
renderItemDescriptionTitleOn: html

	html output: ('Environment Name: [' translateIn: self session) ,selectedLateralItem name, ']'.

	selectedLateralItem canDelete ifTrue: [self renderDeleteEnvironmentOn: html].
	self renderAddEnvironmentOn: html.
	self renderSetEnvironmentIconsAndAppsNamesOn: html.