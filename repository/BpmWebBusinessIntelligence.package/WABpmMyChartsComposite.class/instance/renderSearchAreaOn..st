search area
renderSearchAreaOn: html

	super renderSearchAreaOn: html. 

	html div id: 'top-search-form'; with: [
		html form with: [
			html fieldSet with: [
				html legend class: 'top-search-legend'; 
					with: ('Draw Chart' translateIn: self session).
				self renderDistributionComboOn: html.
				self renderChartTypeComboOn: html.
				self isUserPossibleTasksDistribution 
				ifFalse: [self renderStartEndDatesOn: html.
							self renderQueryConditionOn: html]. 
				self renderShowChartButtonOn: html.
			].
		].
	].

	self renderSaveChartIconOn: html.