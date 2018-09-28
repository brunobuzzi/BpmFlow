other
renderContentOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form 
			with: [
				html fieldSet with: [
					html legend: ('Select Dashboard' translateFor: self session user).
					html label for: 'dashboardName'; with: ('Dashboard Name' translateFor: self session user).
					html select
						class: 'display-block';
						attributeAt: 'id' put: 'dashboardsNames'; 
						list: (#(''), self getAllDashboardsNames) asSortedCollection;
						callback: [:dashboardName | self onDashboardChanged: dashboardName].
				].
				html fieldSet with: [
					html legend: ('Recursion Options' translateFor: self session user).
					self renderRecursionComboOn: html.
					self renderHasFixedDatesCheckboxOn: html.
					self renderModifyStartDateOnUpdateCheckboxOn: html.
				].
				html button 
					callback: [self createDashboard];
					with: ('Save' translateFor: self session user).
			]
	]