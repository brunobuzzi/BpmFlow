search area
renderSearchAreaOn: html

	super renderSearchAreaOn: html.

	html form with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; 
				with: ('Draw Chart' translateFor: self session user).
			self renderBpmUsersComboOn: html.
			self getBpmUserName ifNil: [^self].
			self renderDistributionComboOn: html.
			self renderChartTypeComboOn: html.
			self isFinishedTasksDistribution 
			ifTrue: [self renderStartEndDatesOn: html.
						self renderQueryConditionOn: html]. 
			self renderShowChartButtonOn: html.
		].
	].

	self renderSaveChartIconOn: html.