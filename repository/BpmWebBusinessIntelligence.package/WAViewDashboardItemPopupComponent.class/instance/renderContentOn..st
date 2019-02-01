other
renderContentOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form 
			with: [
				html fieldSet with: [
					html legend: ('View Dashboard Item' translateIn: self session).
					html label for: 'distribution'; with: ('Distribution Name' translateIn: self session).
					html textInput id: 'distribution'; value: self model getDistributionName; disabled: true; class: 'display-block'. 
					html label for: 'lastUpdate'; with: ('Last Update' translateIn: self session).
					html textInput id: 'lastUpdate'; value: self model printLastUpdate; disabled: true; class: 'display-block'. 
					html label for: 'recursion'; with: ('Recursion' translateIn: self session).
					html textInput id: 'recursion'; value: (self model printRecursionName translateIn: self session); disabled: true; class: 'display-block'. 
					html label for: 'hasFixedDates'; with: ('Has Fixed Dates' translateIn: self session).
					html checkbox id: 'hasFixedDates'; value: self model hasFixedDates; disabled: true; class: 'display-block'. 
					html label for: 'modifyStartDate'; with: ('Modify Start Date on Update' translateIn: self session).
					html checkbox id: 'modifyStartDate'; value: self model modifyStartDateOnUpdate; disabled: true; class: 'display-block'. 

				].
		].
	]