other
renderContentOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form 
			with: [
				html fieldSet with: [
					html legend: ('Edit Dashboard' translateFor: self session user).
					html label for: 'dashboardName'; with: ('Dashboard Name' translateFor: self session user).
					html select
						class: 'display-block';
						attributeAt: 'id' put: 'dashboardsNames'; 
						list: (#(''), self getAllDashboardsNames) asSortedCollection;
						callback: [:dashboardName | self onDashboardChanged: dashboardName].
					"self renderCurrentRecursionComboOn: html."
					html label for: 'description'; with: ('Description' translateFor: self session user).
					html textArea id: 'description'; callback: [:value | self addValue: value named: 'description']; class: 'display-block'. 
					self renderIsPrivateCheckboxOn: html.
					self renderIsActiveCheckboxOn: html.
				].
				html button 
					callback: [self saveDashboard];
					with: ('Save' translateFor: self session user).
			]
	]