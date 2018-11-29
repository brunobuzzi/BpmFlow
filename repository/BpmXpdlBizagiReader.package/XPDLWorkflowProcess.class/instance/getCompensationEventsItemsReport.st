import unsupported items
getCompensationEventsItemsReport

	^self createtemsReportForElementSatisfying: [:each | each isCompensationNode] 
			code: 708
			title: 'Unsupported Element' 
			description: 'Compensation Events are NOT supported' 
			solution: 'Remove the Event'