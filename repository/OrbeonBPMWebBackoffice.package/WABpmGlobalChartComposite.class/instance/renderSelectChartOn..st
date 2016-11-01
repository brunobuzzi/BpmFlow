other
renderSelectChartOn: html

	self renderShowHideWindowIconOn: html. "show/hide search area"

	(self isEnabledToShowElementNamed: 'search-area') ifFalse: [^self].

	html form with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; 
				with: ('Draw Chart' translateFor: self session user).

			self renderDistributionComboOn: html.
			self renderChartTypeComboOn: html.

			html div id: 'top-search-filters-one'; with: [
				html submitButton 
					style: 'margin-top: 25px;';
					callback: [self showChart]; 
					with: ('Show Chart' translateFor: self session user)]
		]
	]