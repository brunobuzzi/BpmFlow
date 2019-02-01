other
renderContentOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form 
			with: [
				html fieldSet with: [
					html legend: ('Select Dashboard' translateIn: self session).
					html label for: 'dashboardName'; with: ('Dashboard Name' translateIn: self session).
					html select
						class: 'display-block';
						attributeAt: 'id' put: 'dashboardName'; 
						list: (#(''), self getAllDashboardsNames) asSortedCollection;
						callback: [:dashboardName | self onDashboardChanged: dashboardName].
				].
				html fieldSet with: [
					html legend: ('Recursion Options' translateIn: self session).
					self renderRecursionComboOn: html.
					self renderHasFixedDatesCheckboxOn: html.
					self renderModifyStartDateOnUpdateCheckboxOn: html.
				].
				html button 
					callback: [self createDashboard];
					with: ('Save' translateIn: self session).
			]
	]