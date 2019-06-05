other
renderEditDashboardOptionsOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form 
			with: [
				html fieldSet with: [
					html legend: ('Dashboard Properties' translateIn: self session).
					html label for: 'dashboardName'; with: ('Dashboard Name' translateIn: self session).
					html textInput id: 'dashboardName'; callback: [:value | parent selectedLateralItem name: value]; value: parent selectedLateralItem name; class: 'display-block'. 
					html label for: 'description'; with: ('Description' translateIn: self session).
					html textArea id: 'description'; callback: [:value | parent selectedLateralItem description: value]; value: parent selectedLateralItem description; class: 'display-block'.
					html label for: 'charts-per-column'; with: ('Charts per Column' translateIn: self session).
					html select
						class: 'display-block';
						attributeAt: 'id' put: 'charts-per-column'; 
						list: #(1 2 3 4);
						callback: [:value | self onChartsPerColumnChanged: value];
						selected: (model ifNotNil: [model chartsPerColumn]).
					self renderIsActiveCheckboxOn: html.
					self renderIsPrivateCheckboxOn: html.
				].
				html button 
					callback: [self performDefaultAction];
					with: (self defaultFormButtonLabel translateIn: self session).
			]
	]