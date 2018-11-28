search area
renderSearchAreaOn: html

	super renderSearchAreaOn: html. 

	html form with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; 
				with: ('Draw Chart' translateFor: self session user).
			self renderApplicationComboOn: html.
			self getApplicationName notNil
			ifTrue: [
				self renderProcessDefinitionComboOn: html.
				self getProcessName notNil 
				ifTrue: [
					self renderProcessVersionsComboOn: html.
					self renderDistributionComboOn: html.
					self renderChartTypeComboOn: html.
					(self isCreationDayDistribution or: [self isFieldValueDistribution or:[self isTasksAverageTimeDistribution or: [self isFieldValueEvolution]]])
					ifTrue: [
						(self isFieldValueDistribution or: [self isFieldValueEvolution]) ifTrue: [self renderProcessFormsComboOn: html]. 
						self renderStartEndDatesOn: html.
						self renderQueryConditionOn: html.
						self isFieldValueEvolution ifTrue: [self renderDateGroupsOptionsOn: html].
					].
					self renderShowChartButtonOn: html.
				].
			].
		].
	].

	self renderSaveChartIconOn: html.