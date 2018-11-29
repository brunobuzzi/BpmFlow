import unsupported items
getErrorEventsItemsReport

	^self createtemsReportForElementSatisfying: [:each | each isErrorNode] 
			code: 720
			title: 'Unsupported Element' 
			description: 'Error Events are NOT supported' 
			solution: 'Remove the Event'