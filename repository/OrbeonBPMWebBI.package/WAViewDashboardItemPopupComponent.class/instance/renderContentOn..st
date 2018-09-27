other
renderContentOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form 
			with: [
				html fieldSet with: [
					html legend: ('View Dashboard Item' translateFor: self session user).
					html label for: 'lastUpdate'; with: ('Last Update' translateFor: self session user).
					html textInput id: 'dashboardName'; value: self model printLastUpdate. 
					html label for: 'recursion'; with: ('Recursion' translateFor: self session user).
					html textInput id: 'recursion'; value: self model printRecursionName. 
				].
		].
	]