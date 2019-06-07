other
renderItemDescriptionTitleOn: html

	html output:  selectedLateralItem name.

	self renderRemoveDashboardIconOn: html.

	selectedLateralItem isOutDated ifTrue: [self renderRefreshDashboardIconOn: html].

	self renderEditChartIconsOn: html.

	self renderEditDashboardIconOn: html.