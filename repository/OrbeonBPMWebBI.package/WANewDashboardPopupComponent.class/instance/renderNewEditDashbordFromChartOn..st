other
renderNewEditDashbordFromChartOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form 
			with: [
				html fieldSet with: [
					html legend: ('New Dashboard' translateFor: self session user).
					html label for: 'dashboardName'; with: ('Dashboard Name' translateFor: self session user).
					html textInput id: 'dashboardName'; callback: [:value | self addValue: value named: 'dashboardName']. 
					html label for: 'description'; with: ('Description' translateFor: self session user).
					self renderRecursionComboOn: html.
					html textArea id: 'description'; callback: [:value | self addValue: value named: 'description']. 
				].
				html button 
					callback: [self createDashboard];
					with: ('Create' translateFor: self session user).
			]
	]