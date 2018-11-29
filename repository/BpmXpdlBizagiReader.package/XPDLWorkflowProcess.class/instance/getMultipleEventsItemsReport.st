import unsupported items
getMultipleEventsItemsReport

	^self createtemsReportForElementSatisfying: [:each | each isMultipleNode] 
			code: 732
			title: 'Unsupported Element' 
			description: 'Multiple Events are NOT supported' 
			solution: 'Remove the Event'