search area
renderSearchAreaOn: html

	super renderSearchAreaOn: html.

	html form with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; 
				with: ('Draw Chart' translateIn: self session).
			self renderBpmUsersComboOn: html.
			self getBpmUserName ifNil: [^self].
			self renderDistributionComboOn: html.
			self renderChartTypeComboOn: html.
			(self isFinishedTasksDistribution or: [self isTasksAverageTimeDistribution])
			ifTrue: [self renderStartEndDatesOn: html.
						self renderQueryConditionOn: html]. 
			self renderShowChartButtonOn: html.
		].
	].

	self renderSaveChartIconOn: html.