other
renderContentOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form 
			with: [
				html fieldSet with: [
					html legend: ('View Dashboard Item' translateFor: self session user).
					html label for: 'distribution'; with: ('Distribution Name' translateFor: self session user).
					html textInput id: 'distribution'; value: self model getDistributionName; disabled: true; class: 'display-block'. 
					html label for: 'lastUpdate'; with: ('Last Update' translateFor: self session user).
					html textInput id: 'lastUpdate'; value: self model printLastUpdate; disabled: true; class: 'display-block'. 
					html label for: 'recursion'; with: ('Recursion' translateFor: self session user).
					html textInput id: 'recursion'; value: (self model printRecursionName translateFor: self session user); disabled: true; class: 'display-block'. 
					html label for: 'hasFixedDates'; with: ('Has Fixed Dates' translateFor: self session user).
					html checkbox id: 'hasFixedDates'; value: self model hasFixedDates; disabled: true; class: 'display-block'. 
					html label for: 'modifyStartDate'; with: ('Modify Start Date on Update' translateFor: self session user).
					html checkbox id: 'modifyStartDate'; value: self model modifyStartDateOnUpdate; disabled: true; class: 'display-block'. 

				].
		].
	]