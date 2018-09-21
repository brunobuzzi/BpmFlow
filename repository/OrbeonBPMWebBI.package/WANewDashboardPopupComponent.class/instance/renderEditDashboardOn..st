other
renderEditDashboardOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form 
			with: [
				html fieldSet with: [
					html legend: ('Edit Dashboard' translateFor: self session user).
					html label for: 'dashboardName'; with: ('Dashboard Name' translateFor: self session user).
					html textInput id: 'dashboardName'; callback: [:value | model name: value]; value: model name. 
					self renderCurrentRecursionComboOn: html.
					html label for: 'description'; with: ('Description' translateFor: self session user).
					html textArea id: 'description'; callback: [:value | model description: value]; value: model description. 
					self renderIsPrivateCheckboxOn: html.
					self renderIsActiveCheckboxOn: html.
				].
				html button 
					callback: [self saveDashboard];
					with: ('Save' translateFor: self session user).
			]
	]