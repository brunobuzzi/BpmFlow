search area
renderSearchAreaOn: html

	super renderSearchAreaOn: html. 

	html div id: 'top-search-form'; with: [
		html form with: [
			html fieldSet with: [
				html legend class: 'top-search-legend'; 
					with: ('Draw Chart' translateIn: self session).
				self renderApplicationComboOn: html.
				self getApplicationName ifNil: [^self].
				self renderRolesComboOn: html.
				self renderDistributionComboOn: html.
				self renderChartTypeComboOn: html.
				self isUsersInTimeDistribution ifTrue: [self renderStartEndDatesOn: html].
				self renderShowChartButtonOn: html.
			].
		].
	].

	self renderSaveChartIconOn: html.