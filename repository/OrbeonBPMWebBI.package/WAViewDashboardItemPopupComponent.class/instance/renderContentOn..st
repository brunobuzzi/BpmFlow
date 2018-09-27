other
renderContentOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form 
			with: [
				html fieldSet with: [
					html legend: ('View Dashboard Item' translateFor: self session user).
					html label for: 'distribution'; with: ('Distribution Name' translateFor: self session user).
					html textInput id: 'distribution'; value: self model getDistributionName; readonly: true. 
					html label for: 'lastUpdate'; with: ('Last Update' translateFor: self session user).
					html textInput id: 'dashboardName'; value: self model printLastUpdate; readonly: true. 
					html label for: 'recursion'; with: ('Recursion' translateFor: self session user).
					html textInput id: 'recursion'; value: self model printRecursionName; readonly: true. 
					html label for: 'hasFixedDates'; with: ('Has Fixed Dates' translateFor: self session user).
					html checkbox id: 'hasFixedDates'; value: self model hasFixedDates; readonly: true. 
					html label for: 'modifyStartDate'; with: ('Modify Start Date on Update' translateFor: self session user).
					html checkbox id: 'modifyStartDate'; value: self model modifyStartDateOnUpdate; readonly: true. 

				].
		].
	]