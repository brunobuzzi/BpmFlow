search area
renderSearchAreaOn: html

	super renderSearchAreaOn: html. 

	html div id: 'top-search-form'; with: [
		html form with: [
			html fieldSet with: [
				html legend class: 'top-search-legend'; 
					with: ('Draw Chart' translateIn: self session).
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
						self renderChartTypeComboOn: html.
						self renderShowChartButtonOn: html.
					].
				].
			].
		].
	].

	self renderSaveChartIconOn: html.