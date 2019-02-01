other
renderContentOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form 
			with: [
				html fieldSet with: [
					html legend: ('New Dashboard' translateIn: self session).
					html label for: 'dashboardName'; with: ('Dashboard Name' translateIn: self session).
					html textInput id: 'dashboardName'; callback: [:value | self addValue: value named: 'dashboardName']; class: 'display-block'. 
					html label for: 'description'; with: ('Description' translateIn: self session).
					html textArea id: 'description'; callback: [:value | self addValue: value named: 'description']; class: 'display-block'.
					self renderIsActiveCheckboxOn: html.
					self renderIsPrivateCheckboxOn: html.
				].
				html fieldSet with: [
					html legend: ('Recursion Options' translateIn: self session).
					self renderRecursionComboOn: html.
					self renderHasFixedDatesCheckboxOn: html.
					self renderModifyStartDateOnUpdateCheckboxOn: html.
				].
				html button 
					callback: [self createDashboard];
					with: ('Create' translateIn: self session).
			]
	]