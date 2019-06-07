other
renderEditDashboardOptionsOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form 
			with: [
				html fieldSet with: [
					html legend: ('Chart Recursion Options' translateIn: self session).
					self renderRecursionComboOn: html.
					self renderHasFixedDatesCheckboxOn: html.
					self renderModifyStartDateOnUpdateCheckboxOn: html.
				].
				html button 
					callback: [self performDefaultAction];
					with: (self defaultFormButtonLabel translateIn: self session).
			]
	]