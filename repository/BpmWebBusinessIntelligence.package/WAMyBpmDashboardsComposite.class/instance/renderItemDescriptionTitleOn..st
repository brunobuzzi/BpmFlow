other
renderItemDescriptionTitleOn: html

	html output:  selectedLateralItem name.

	self renderEditDashboardIconOn: html.

	selectedLateralItem isOutDated ifTrue: [self renderRefreshDashboardIconOn: html].

	self renderRemoveDashboardIconOn: html.