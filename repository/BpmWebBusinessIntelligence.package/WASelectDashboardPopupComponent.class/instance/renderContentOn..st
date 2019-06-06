other
renderContentOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form 
			with: [
				html fieldSet with: [
					html legend: ('Select Dashboard' translateIn: self session).
					html label for: 'dashboardName'; with: ('Dashboard Name' translateIn: self session).
					html select
						class: 'display-block width-100per';
						attributeAt: 'id' put: 'dashboardName'; 
						list: (#(''), self getAllDashboardsNames) asSortedCollection;
						callback: [:dashboardName | self onDashboardChanged: dashboardName];
						selected: model name;
						enabled: [:value | true].
				html button 
					callback: [self selectDashboard];
					with: ('Select' translateIn: self session).
			]
		]
	]