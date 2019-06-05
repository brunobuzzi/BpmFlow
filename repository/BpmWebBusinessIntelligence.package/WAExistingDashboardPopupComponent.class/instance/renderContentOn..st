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
						callback: [:dashboardName | self onDashboardChanged: dashboardName];
						selected: model name;
						enabled: [:value | true].
					html label for: 'charts-per-column'; with: ('Charts per Column' translateIn: self session).
					html select
						class: 'display-block';
						attributeAt: 'id' put: 'charts-per-column'; 
						list: #(1 2 3 4);
						callback: [:value | self onChartsPerColumnChanged: value];
						selected: (model ifNotNil: [model chartsPerColumn]).
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