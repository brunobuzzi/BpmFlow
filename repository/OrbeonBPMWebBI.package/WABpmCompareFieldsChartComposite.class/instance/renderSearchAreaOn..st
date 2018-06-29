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
					self renderProcessFormsComboOn: html. 
					self renderStartEndDatesOn: html.
					self renderQueryConditionOn: html.
					self renderDateGroupsOptionsOn: html.
					self renderShowChartButtonOn: html.
				].
			].
		].
	].

	self renderSaveChartIconOn: html.